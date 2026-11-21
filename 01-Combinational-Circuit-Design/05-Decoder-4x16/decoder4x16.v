`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module decoder4x16(
    input A3,
    input A2,
    input A1,
    input A0,
    output [15:0] Y
);
    wire [7:0] Y0;
    wire [7:0] Y1;
    // First 3x8 Decoder
    decoder3x8 D0(
        .E(~A3),
        .A2(A2),
        .A1(A1),
        .A0(A0),
        .Y(Y0)
    );
    // Second 3x8 Decoder
    decoder3x8 D1(
        .E(A3),
        .A2(A2),
        .A1(A1),
        .A0(A0),
        .Y(Y1)
    );
    // Combine the outputs
    assign Y[7:0]  = Y0;
    assign Y[15:8] = Y1;
endmodule
