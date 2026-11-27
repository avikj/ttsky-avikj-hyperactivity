// SPDX-FileCopyrightText: 2026 Avik Jain / Hyperactive Labs, Inc.
// SPDX-License-Identifier: Apache-2.0
// Mechanically compiled from lib/silicon/hx-tt-tapeout.hypercubical (0 postulates).
`default_nettype none

module hx_opt_face_conflict(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w2);
  wire w4 = ~(w1 & w2);
  wire w5 = ~(w3 & w4);
  assign y = w5;
endmodule
module hx_opt_demorgan_mux(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w1);
  wire w4 = ~(w2 & w3);
  wire w5 = ~(w0 & w4);
  wire w6 = ~(w1 & w4);
  wire w7 = ~(w5 & w6);
  assign y = w7;
endmodule
module hx_opt_commute(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w1);
  wire w4 = ~(w0 & w2);
  wire w5 = ~(w1 & w2);
  wire w6 = ~(w4 & w5);
  wire w7 = ~(w3 & w6);
  wire w8 = ~(w7 & w7);
  assign y = w8;
endmodule
module hx_opt_era_prune(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w0);
  wire w4 = ~(w1 & w1);
  wire w5 = ~(w2 & w2);
  wire w6 = ~(w3 & w4);
  wire w7 = ~(w5 & w6);
  wire w8 = ~(w5 & w7);
  assign y = w8;
endmodule
module hx_opt_gals_clk_en(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w1);
  wire w4 = ~(w0 & w3);
  wire w5 = ~(w2 & w2);
  wire w6 = ~(w4 & w5);
  assign y = w6;
endmodule
module hx_opt_vxchg_fire(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w1);
  wire w4 = ~(w0 & w2);
  wire w5 = ~(w3 & w3);
  wire w6 = ~(w4 & w5);
  wire w7 = ~(w6 & w6);
  assign y = w7;
endmodule
module hx_opt_aux_mux2(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w2);
  wire w4 = ~(w0 & w3);
  wire w5 = ~(w1 & w2);
  wire w6 = ~(w4 & w5);
  assign y = w6;
endmodule
module hx_opt_maj3_carry(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w0);
  wire w4 = ~(w0 & w1);
  wire w5 = ~(w1 & w1);
  wire w6 = ~(w3 & w5);
  wire w7 = ~(w2 & w6);
  wire w8 = ~(w4 & w7);
  assign y = w8;
endmodule
module hx_opt_xor2_vxchg(input wire w0, input wire w1, input wire w2, output wire y);
  wire w3 = ~(w0 & w1);
  wire w4 = ~(w0 & w3);
  wire w5 = ~(w1 & w3);
  wire w6 = ~(w4 & w5);
  assign y = w6;
endmodule
module hx_meta_cub_face_conflict4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w2 & w2);
  wire w5 = ~(w3 & w4);
  wire w6 = ~(w5 & w4);
  wire w7 = ~(w6 & w1);
  wire w8 = ~(w6 & w0);
  wire w9 = ~(w8 & w7);
  assign y = w9;
endmodule
module hx_meta_cub_demorgan_alu4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w3 & w1);
  wire w5 = ~(w2 & w0);
  wire w6 = ~(w2 & w5);
  wire w7 = ~(w3 & w4);
  wire w8 = ~(w5 & w0);
  wire w9 = ~(w8 & w6);
  wire w10 = ~(w4 & w1);
  wire w11 = ~(w7 & w9);
  wire w12 = ~(w11 & w10);
  assign y = w12;
endmodule
module hx_meta_inet_era_either4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w3 & w3);
  wire w5 = ~(w2 & w4);
  wire w6 = ~(w5 & w4);
  wire w7 = ~(w0 & w6);
  wire w8 = ~(w1 & w7);
  wire w9 = ~(w8 & w7);
  wire w10 = ~(w9 & w6);
  assign y = w10;
endmodule
module hx_meta_inet_commute4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w0 & w2);
  wire w5 = ~(w1 & w0);
  wire w6 = ~(w0 & w3);
  wire w7 = ~(w3 & w2);
  wire w8 = ~(w7 & w5);
  wire w9 = ~(w6 & w4);
  wire w10 = ~(w9 & w8);
  wire w11 = ~(w10 & w9);
  wire w12 = ~(w11 & w11);
  assign y = w12;
endmodule
module hx_meta_inet_annihilate4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w1 & w0);
  wire w5 = ~(w2 & w4);
  wire w6 = ~(w0 & w3);
  wire w7 = ~(w5 & w0);
  wire w8 = ~(w6 & w4);
  wire w9 = ~(w8 & w5);
  wire w10 = ~(w1 & w2);
  wire w11 = ~(w6 & w7);
  wire w12 = ~(w9 & w11);
  wire w13 = ~(w12 & w12);
  assign y = w13;
endmodule
module hx_meta_inet_vxchg_arb4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w1 & w0);
  wire w5 = ~(w0 & w4);
  wire w6 = ~(w4 & w1);
  wire w7 = ~(w3 & w2);
  wire w8 = ~(w5 & w6);
  wire w9 = ~(w7 & w8);
  wire w10 = ~(w9 & w2);
  wire w11 = ~(w2 & w10);
  wire w12 = ~(w11 & w11);
  assign y = w12;
endmodule
module hx_meta_inet_tag_neq4(input wire w0, input wire w1, input wire w2, input wire w3, output wire y);
  wire w4 = ~(w0 & w2);
  wire w5 = ~(w0 & w4);
  wire w6 = ~(w2 & w4);
  wire w7 = ~(w1 & w3);
  wire w8 = ~(w1 & w7);
  wire w9 = ~(w3 & w7);
  wire w10 = ~(w5 & w8);
  wire w11 = ~(w10 & w10);
  wire w12 = ~(w6 & w9);
  wire w13 = ~(w12 & w12);
  wire w14 = ~(w11 & w13);
  assign y = w14;
endmodule

module hx_inet_opt_tile (
  input  wire       pair_valid, load_en, tag_a, tag_b, era_a, era_b,
  input  wire [3:0] face_a0, face_a1, face_b0, face_b1,
  input  wire       iv_sel, iv_a, iv_b, vx_arr, vx_wait,
  output wire       out_conflict, out_erase, out_commute, out_annihilate,
  output wire       out_gals_clk, out_vx_fire, out_vx_next, out_iv_res
);
  wire [3:0] m1 = face_a1 | face_b1;
  wire [3:0] fc;
  genvar d;
  generate for (d = 0; d < 4; d = d + 1) begin : g_fc
    hx_opt_face_conflict u_fc (.w0(face_a0[d]), .w1(face_b0[d]), .w2(m1[d]), .y(fc[d]));
  end endgenerate
  assign out_conflict = |fc;
  hx_opt_era_prune    u_era  (.w0(era_a), .w1(era_b), .w2(out_conflict), .y(out_erase));
  hx_opt_gals_clk_en  u_clk  (.w0(pair_valid), .w1(out_conflict), .w2(load_en), .y(out_gals_clk));
  wire active_ok = pair_valid & ~out_erase;
  hx_opt_commute      u_comm (.w0(tag_a), .w1(tag_b), .w2(active_ok), .y(out_commute));
  wire n_comm = ~(out_commute & out_commute);
  wire n_ann  = ~(active_ok & n_comm);
  assign out_annihilate = ~(n_ann & n_ann);
  hx_opt_vxchg_fire   u_vxf  (.w0(vx_arr), .w1(vx_wait), .w2(out_erase), .y(out_vx_fire));
  hx_opt_xor2_vxchg   u_vxn  (.w0(vx_arr), .w1(vx_wait), .w2(1'b0), .y(out_vx_next));
  hx_opt_demorgan_mux u_iv   (.w0(iv_a), .w1(iv_b), .w2(iv_sel), .y(out_iv_res));
endmodule

module hx_meta_inet_tile (
  input  wire       pair_valid,
  input  wire [1:0] tag_a, tag_b,
  input  wire [3:0] fa0, fa1, fb0, fb1,
  input  wire       iv_a, iv_b, iv_neg, iv_and, arr_a, arr_b, vx_wait,
  output wire       out_conflict, out_era, out_tag_neq, out_commute, out_annihilate, out_vx_arb, out_iv
);
  wire [3:0] fc;
  genvar d;
  generate for (d = 0; d < 4; d = d + 1) begin : g_fc4
    hx_meta_cub_face_conflict4 u_fc (.w0(fa0[d]), .w1(fb0[d]), .w2(fa1[d]), .w3(fb1[d]), .y(fc[d]));
  end endgenerate
  assign out_conflict = |fc;
  hx_meta_inet_era_either4  u_era (.w0(tag_a[0]), .w1(tag_a[1]), .w2(tag_b[0]), .w3(tag_b[1]), .y(out_era));
  hx_meta_inet_tag_neq4     u_tnq (.w0(tag_a[0]), .w1(tag_a[1]), .w2(tag_b[0]), .w3(tag_b[1]), .y(out_tag_neq));
  wire pruned = out_conflict | out_era;
  hx_meta_inet_commute4     u_cm  (.w0(pair_valid), .w1(pruned), .w2(tag_a[0]), .w3(tag_b[0]), .y(out_commute));
  hx_meta_inet_annihilate4  u_an  (.w0(pair_valid), .w1(pruned), .w2(tag_a[0]), .w3(tag_b[0]), .y(out_annihilate));
  hx_meta_inet_vxchg_arb4   u_vx  (.w0(arr_a), .w1(arr_b), .w2(vx_wait), .w3(pruned), .y(out_vx_arb));
  hx_meta_cub_demorgan_alu4 u_dm  (.w0(iv_a), .w1(iv_b), .w2(iv_neg), .w3(iv_and), .y(out_iv));
endmodule

module hx_psc1_bf16_mul_fp32 (
  input  wire [15:0] a,
  input  wire [15:0] b,
  output reg  [31:0] fp32_out
);
  wire        sr   = a[15] ^ b[15];
  wire [7:0]  ea   = a[14:7];
  wire [7:0]  eb   = b[14:7];
  wire [6:0]  ma   = a[6:0];
  wire [6:0]  mb   = b[6:0];
  wire        infA = (ea == 8'hFF);
  wire        infB = (eb == 8'hFF);
  wire        zerA = (ea == 8'h00);
  wire        zerB = (eb == 8'h00);
  wire        nanR = (infA && (ma != 7'd0)) || (infB && (mb != 7'd0)) || ((infA || infB) && (zerA || zerB));
  wire [15:0] prod = {1'b1, ma} * {1'b1, mb};
  wire        norm = prod[15];
  wire [9:0]  rawE = {2'd0, ea} + {2'd0, eb} + {9'd0, norm};
  wire [7:0]  er   = rawE[7:0] - 8'd127;
  wire [22:0] mr   = norm ? {prod[14:0], 8'd0} : {prod[13:0], 9'd0};
  always @(*) begin
    if (infA || infB)        fp32_out = nanR ? 32'h7FC00000 : {sr, 8'hFF, 23'd0};
    else if (zerA || zerB)   fp32_out = {sr, 31'd0};
    else if (rawE < 10'd128) fp32_out = {sr, 31'd0};
    else if (rawE > 10'd381) fp32_out = {sr, 8'hFF, 23'd0};
    else                     fp32_out = {sr, er, mr};
  end
endmodule

module hx_psc1_fiber_unit (
  input  wire        op_and,
  input  wire [15:0] a_vec,
  input  wire [15:0] b_vec,
  output wire [15:0] y_vec
);
  genvar i;
  generate for (i = 0; i < 4; i = i + 1) begin : flane
    wire [3:0] a = a_vec[i*4 +: 4];
    wire [3:0] b = b_vec[i*4 +: 4];
    wire [3:0] lx = { (a[0]&b[3])|(a[3]&b[0])|(a[1]&b[2])|(a[2]&b[1]),
                      (a[0]&b[2])|(a[2]&b[0])|(a[1]&b[3])|(a[3]&b[1]),
                      (a[0]&b[1])|(a[1]&b[0])|(a[2]&b[3])|(a[3]&b[2]),
                      (a[0]&b[0])|(a[1]&b[1])|(a[2]&b[2])|(a[3]&b[3]) };
    wire [3:0] qa = { (a[3]&b[3]),
                      (a[2]&(b[2]|b[3]))|(a[3]&b[2]),
                      (a[1]&(b[1]|b[3]))|(a[3]&b[1]),
                      (a[0]&(|b))|(b[0]&(|a))|(a[1]&b[2])|(a[2]&b[1]) };
    assign y_vec[i*4 +: 4] = op_and ? qa : lx;
  end endgenerate
endmodule

module hx_rv32i_alu10 (
  input  wire [3:0]  op,
  input  wire [31:0] a,
  input  wire [31:0] b,
  output reg  [31:0] y
);
  wire [4:0] sh = b[4:0];
  wire signed [31:0] sa = a;
  wire signed [31:0] sb = b;
  always @(*) begin
    case (op)
      4'd0: y = a + b;
      4'd1: y = a - b;
      4'd2: y = a ^ b;
      4'd3: y = a | b;
      4'd4: y = a & b;
      4'd5: y = a << sh;
      4'd6: y = a >> sh;
      4'd7: y = $unsigned(sa >>> sh);
      4'd8: y = {31'd0, (sa < sb)};
      4'd9: y = {31'd0, (a < b)};
      default: y = a + b;
    endcase
  end
endmodule

module tt_um_avikj_hyperactivity (
  input  wire [7:0] ui_in,
  output reg  [7:0] uo_out,
  input  wire [7:0] uio_in,
  output wire [7:0] uio_out,
  output wire [7:0] uio_oe,
  input  wire       ena,
  input  wire       clk,
  input  wire       rst_n
);
  assign uio_out = 8'd0;
  assign uio_oe  = 8'd0;

  // Clocked 16-byte host command register file + 16-bit hardware BIST signature
  reg [31:0] op_a;
  reg [31:0] op_b;
  reg [7:0]  ctrl;
  reg [7:0]  zip_sm;
  reg [7:0]  zip_meta;
  reg [7:0]  zip_esc;
  reg [7:0]  pal0, pal1, pal2, pal3;
  reg [15:0] bist_sig;

  wire [3:0] addr    = uio_in[3:0];
  wire       wr_en   = uio_in[4];
  wire       step_en = uio_in[5];
  wire [1:0] rd_bank = uio_in[7:6];

  // Engine 0a: HyperINet-Opt (9 superoptimized 3-in NAND2 blocks)
  wire [7:0] inet_flags;
  hx_inet_opt_tile u_inet (
    .pair_valid(op_a[0]), .load_en(op_a[1]), .tag_a(op_a[2]), .tag_b(op_a[3]),
    .era_a(op_a[4]), .era_b(op_a[5]),
    .face_a0(op_b[19:16]), .face_a1(op_b[23:20]), .face_b0(op_b[27:24]), .face_b1(op_b[31:28]),
    .iv_sel(op_a[6]), .iv_a(op_a[7]), .iv_b(op_a[8]), .vx_arr(op_a[9]), .vx_wait(op_a[10]),
    .out_conflict(inet_flags[0]), .out_erase(inet_flags[1]), .out_commute(inet_flags[2]),
    .out_annihilate(inet_flags[3]), .out_gals_clk(inet_flags[4]), .out_vx_fire(inet_flags[5]),
    .out_vx_next(inet_flags[6]), .out_iv_res(inet_flags[7])
  );

  // Engine 0b: HyperMeta-INet (7 GPU-superoptimized 4-in NAND2 blocks)
  wire [7:0] meta_flags;
  assign meta_flags[7] = 1'b0;
  hx_meta_inet_tile u_meta (
    .pair_valid(op_a[0]), .tag_a(op_a[12:11]), .tag_b(op_a[14:13]),
    .fa0(op_b[19:16]), .fa1(op_b[23:20]), .fb0(op_b[27:24]), .fb1(op_b[31:28]),
    .iv_a(op_a[7]), .iv_b(op_a[8]), .iv_neg(op_a[15]), .iv_and(op_a[6]),
    .arr_a(op_a[9]), .arr_b(zip_meta[4]), .vx_wait(op_a[10]),
    .out_conflict(meta_flags[0]), .out_era(meta_flags[1]), .out_tag_neq(meta_flags[2]),
    .out_commute(meta_flags[3]), .out_annihilate(meta_flags[4]), .out_vx_arb(meta_flags[5]), .out_iv(meta_flags[6])
  );

  // Engine 1: PSC-1 1-Cycle 12b->16b Lossless BF16 Unzipper + Exact BF16xBF16->FP32
  reg [7:0] pal_exp;
  always @(*) begin
    case (zip_meta[3:0])
      4'h0: pal_exp = pal0;
      4'h1: pal_exp = pal1;
      4'h2: pal_exp = pal2;
      4'h3: pal_exp = pal3;
      4'hF: pal_exp = zip_esc;
      default: pal_exp = pal0;
    endcase
  end
  wire [15:0] bf16_unzipped = {zip_sm[7], pal_exp, zip_sm[6:0]};
  wire [15:0] bf16_a = ctrl[5] ? bf16_unzipped : op_a[15:0];
  wire [31:0] bf16_fp32;
  hx_psc1_bf16_mul_fp32 u_bf16 (.a(bf16_a), .b(op_a[31:16]), .fp32_out(bf16_fp32));

  // Engine 2: PSC-1 4-Lane Cubical Fiber Propagator (L:XOR, Q:AND)
  wire [15:0] fiber_y;
  hx_psc1_fiber_unit u_fib (.op_and(ctrl[4]), .a_vec(op_a[15:0]), .b_vec(op_b[15:0]), .y_vec(fiber_y));

  // Engine 3: Universally-Proved 10-Op 32-bit RV32I ALU
  wire [31:0] alu_y;
  hx_rv32i_alu10 u_alu (.op(ctrl[3:0]), .a(op_a), .b(op_b), .y(alu_y));

  wire [15:0] step_mix = {inet_flags, meta_flags} ^ bf16_fp32[31:16] ^ fiber_y ^ alu_y[15:0];

  always @(posedge clk) begin
    if (!rst_n) begin
      op_a     <= 32'd0;
      op_b     <= 32'd0;
      ctrl     <= 8'd0;
      zip_sm   <= 8'd0;
      zip_meta <= 8'd0;
      zip_esc  <= 8'h7F;
      pal0     <= 8'h7F;
      pal1     <= 8'h80;
      pal2     <= 8'h7E;
      pal3     <= 8'h81;
      bist_sig <= 16'hA55A;
    end else begin
      if (wr_en) begin
        case (addr)
          4'h0: op_a[7:0]   <= ui_in;
          4'h1: op_a[15:8]  <= ui_in;
          4'h2: op_a[23:16] <= ui_in;
          4'h3: op_a[31:24] <= ui_in;
          4'h4: op_b[7:0]   <= ui_in;
          4'h5: op_b[15:8]  <= ui_in;
          4'h6: op_b[23:16] <= ui_in;
          4'h7: op_b[31:24] <= ui_in;
          4'h8: ctrl        <= ui_in;
          4'h9: zip_sm      <= ui_in;
          4'hA: zip_meta    <= ui_in;
          4'hB: zip_esc     <= ui_in;
          4'hC: pal0        <= ui_in;
          4'hD: pal1        <= ui_in;
          4'hE: pal2        <= ui_in;
          4'hF: pal3        <= ui_in;
        endcase
      end
      if (step_en) begin
        bist_sig <= {bist_sig[14:0], bist_sig[15] ^ bist_sig[13] ^ bist_sig[12] ^ bist_sig[10]} ^ step_mix;
      end
    end
  end

  always @(*) begin
    case ({rd_bank, addr[1:0]})
      4'b00_00: uo_out = inet_flags;
      4'b00_01: uo_out = meta_flags;
      4'b00_10: uo_out = bist_sig[7:0];
      4'b00_11: uo_out = bist_sig[15:8];
      4'b01_00: uo_out = bf16_fp32[7:0];
      4'b01_01: uo_out = bf16_fp32[15:8];
      4'b01_10: uo_out = bf16_fp32[23:16];
      4'b01_11: uo_out = bf16_fp32[31:24];
      4'b10_00: uo_out = fiber_y[7:0];
      4'b10_01: uo_out = fiber_y[15:8];
      4'b10_10: uo_out = bf16_unzipped[7:0];
      4'b10_11: uo_out = bf16_unzipped[15:8];
      4'b11_00: uo_out = alu_y[7:0];
      4'b11_01: uo_out = alu_y[15:8];
      4'b11_10: uo_out = alu_y[23:16];
      4'b11_11: uo_out = alu_y[31:24];
    endcase
  end

  wire _unused = &{ena, ctrl[7:6], zip_meta[7:5], 1'b0};
endmodule
