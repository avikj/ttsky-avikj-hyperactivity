# SPDX-FileCopyrightText: 2026 Avik Jain / Hyperactive Labs, Inc.
# SPDX-License-Identifier: Apache-2.0
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

async def wr_reg(dut, addr, val):
    dut.ui_in.value = val & 0xFF
    dut.uio_in.value = (addr & 0x0F) | 0x10
    await ClockCycles(dut.clk, 1)
    dut.uio_in.value = addr & 0x0F
    await ClockCycles(dut.clk, 1)

async def rd_bank(dut, bank, idx):
    dut.uio_in.value = ((bank & 3) << 6) | (idx & 3)
    await ClockCycles(dut.clk, 1)
    return int(dut.uo_out.value)

async def rd_u32(dut, bank):
    v = 0
    for i in range(4):
        v |= (await rd_bank(dut, bank, i)) << (8 * i)
    return v

@cocotb.test()
async def test_hyperactivity_4engines(dut):
    clock = Clock(dut.clk, 20, unit='ns')
    cocotb.start_soon(clock.start())
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 2)

    # 1. Test Engine 3 (RV32I ALU): 0x12345678 + 0x01020304 = 0x1336597C
    for i, b in enumerate([0x78, 0x56, 0x34, 0x12]): await wr_reg(dut, i, b)
    for i, b in enumerate([0x04, 0x03, 0x02, 0x01]): await wr_reg(dut, 4 + i, b)
    await wr_reg(dut, 8, 0x00)
    assert (await rd_u32(dut, 3)) == 0x1336597C
    # SUB: 0x12345678 - 0x01020304 = 0x11325374
    await wr_reg(dut, 8, 0x01)
    assert (await rd_u32(dut, 3)) == 0x11325374
    # XOR: 0x12345678 ^ 0x01020304 = 0x1336557C
    await wr_reg(dut, 8, 0x02)
    assert (await rd_u32(dut, 3)) == 0x1336557C

    # 2. Test Engine 1 (PSC-1 Lossless 12b->16b BF16 Unzip + Exact BF16xBF16->FP32)
    # bf16(1.5) = 0x3FC0 -> sign=0, exp=0x7F (pal0), mant=0x40 -> sm=0x40, idx=0
    # bf16(2.0) = 0x4000 loaded in op_a[31:16]; exact product = fp32(3.0) = 0x40400000
    await wr_reg(dut, 2, 0x00)
    await wr_reg(dut, 3, 0x40)
    await wr_reg(dut, 9, 0x40)
    await wr_reg(dut, 10, 0x00)
    await wr_reg(dut, 8, 0x20)
    unzip_lo = await rd_bank(dut, 2, 2)
    unzip_hi = await rd_bank(dut, 2, 3)
    assert ((unzip_hi << 8) | unzip_lo) == 0x3FC0
    assert (await rd_u32(dut, 1)) == 0x40400000

    # 3. Test Engine 0 (HyperINet-Opt + HyperMeta-INet): active pair commute & face conflict
    # pair_valid=1 (bit0), tag_a=1 (bit2), tag_b=0 (bit3), no conflict -> commute=1 (bit2)
    await wr_reg(dut, 0, 0x05)
    await wr_reg(dut, 1, 0x00)
    await wr_reg(dut, 6, 0x00)
    await wr_reg(dut, 7, 0x00)
    f0 = await rd_bank(dut, 0, 0)
    assert (f0 & 0x01) == 0
    assert (f0 & 0x04) == 0x04
    # Trigger 4D face contradiction: face_a0[0]=1 (op_b[16]), face_b1[0]=1 (op_b[28]) -> conflict=1, erase=1
    await wr_reg(dut, 6, 0x01)
    await wr_reg(dut, 7, 0x10)
    f1 = await rd_bank(dut, 0, 0)
    assert (f1 & 0x03) == 0x03

    # 4. Test Engine 2 (PSC-1 4-Lane Cubical Fiber ALU): identity lane a=0x1111, b=0x2222 (L:XOR)
    await wr_reg(dut, 0, 0x11)
    await wr_reg(dut, 1, 0x11)
    await wr_reg(dut, 4, 0x22)
    await wr_reg(dut, 5, 0x22)
    await wr_reg(dut, 8, 0x00)
    fib_lo = await rd_bank(dut, 2, 0)
    fib_hi = await rd_bank(dut, 2, 1)
    assert ((fib_hi << 8) | fib_lo) == 0x2222

    # 5. Test Hardware BIST step pulse changes signature deterministically
    b0 = (await rd_bank(dut, 0, 3) << 8) | (await rd_bank(dut, 0, 2))
    assert b0 == 0xA55A
    dut.uio_in.value = 0x20
    await ClockCycles(dut.clk, 1)
    dut.uio_in.value = 0x00
    await ClockCycles(dut.clk, 1)
    b1 = (await rd_bank(dut, 0, 3) << 8) | (await rd_bank(dut, 0, 2))
    assert b1 != 0xA55A
