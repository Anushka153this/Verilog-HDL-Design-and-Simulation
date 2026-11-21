`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module mod10_counter (
    input wire clk,
    input wire rst_n,
    output wire [3:0] q,             // {Q3, Q2, Q1, Q0}
    output wire          carry_out // pulses high at count = 9
);
    wire q0, q1, q2, q3;
    wire d0, d1, d2, d3;
    // ---- Excitation logic (from K-map, self-correcting) ----
    assign d0 = (~q0 & ~q3) | (~q0 & ~q1 & ~q2);
    assign d1 = (q0 & ~q1 & ~q3) | (q1 & ~q0 & ~q3);
    assign d2 = (q2 & ~q0 & ~q3) | (q2 & ~q1 & ~q3) | (q0 & q1 & ~q2 & ~q3);
    assign d3 = (q0 & q1 & q2 & ~q3) | (q3 & ~q0 & ~q1 & ~q2);
    // ---- Four D flip-flops (reuse your dff module) ----
    dff FF0 (.clk(clk), .rst_n(rst_n), .d(d0), .q(q0));
    dff FF1 (.clk(clk), .rst_n(rst_n), .d(d1), .q(q1));
    dff FF2 (.clk(clk), .rst_n(rst_n), .d(d2), .q(q2));
    dff FF3 (.clk(clk), .rst_n(rst_n), .d(d3), .q(q3));
    assign q = {q3, q2, q1, q0};
    assign carry_out = (q == 4'b1001);
endmodule
