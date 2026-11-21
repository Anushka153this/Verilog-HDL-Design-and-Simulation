`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module rc(q,clk,rst);
    output [3:0]q;
    input clk,rst;
    tff T1(q[0],clk,rst,1'b1);
    tff T2(q[1],q[0],rst,1'b1);
    tff T3(q[2],q[1],rst,1'b1);
    tff T4(q[3],q[2],rst,1'b1);
endmodule
