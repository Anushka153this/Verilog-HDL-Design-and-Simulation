`timescale 1ns / 1ps
module csa(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire ripple_cout;
    wire [3:0] P;
    wire block_propagate;
    rca RCA(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(ripple_cout),
        .P(P)
    );
    assign block_propagate = P[0] & P[1] & P[2] & P[3];
    mux_2to1 MUX(
        .i0(ripple_cout),
        .i1(Cin),
        .sel(block_propagate),
        .y(Cout)
    );
Endmodule
