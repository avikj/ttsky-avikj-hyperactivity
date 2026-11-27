## How it works

`tt_um_avikj_hyperactivity` is a 4-engine supercomputer ASIC compiled directly from zero-postulate CCHM cubical type-theory proofs (`lib/silicon/hx-tt-tapeout.hypercubical`):

1. **HyperINet-Opt + HyperMeta-INet (Engine 0)**: 16 provably minimal superoptimized NAND2 blocks (104 minimal NAND2 gates) executing 4D cubical face contradiction pruning, De Morgan interval meet/join, active-pair CONxDUP commutation/annihilation, and lock-free `vxchg` wire rendezvous.
2. **PSC-1 Lossless BF16 Codec + Exact BF16xBF16->FP32 Multiplier (Engine 1)**: 1-cycle 12-bit-to-16-bit lossless BF16 weight unzipper (1.333x memory bandwidth) feeding an exact IEEE-754 BF16xBF16->FP32 fused multiplier with zero mantissa rounding error.
3. **PSC-1 4-Lane Cubical Fiber ALU (Engine 2)**: 1-cycle `(L:XOR, Q:AND)` uint4 symbolic fiber propagator.
4. **RV32I 10-Op 32-bit ALU (Engine 3)**: Full 32-bit `ADD/SUB/XOR/OR/AND/SLL/SRL/SRA/SLT/SLTU` control engine plus a 16-bit hardware BIST CRC/LFSR signature across all 4 engines.

## How to test

Write operands to registers `0x0..0xF` by setting `uio_in[3:0]=addr`, `uio_in[4]=1` (`wr_en`), and `ui_in=data` for 1 clock cycle. Read engine outputs immediately by selecting `uio_in[7:6]=rd_bank` (`00`=INet/BIST, `01`=BF16->FP32, `10`=Fiber/Unzip, `11`=RV32I ALU) and `uio_in[1:0]=byte_idx`. Pulse `uio_in[5]=1` to fold all 4 engines into the 16-bit hardware BIST signature.

## External hardware

None required; fully testable over the Tiny Tapeout RP2040/RP2350 demo board.
