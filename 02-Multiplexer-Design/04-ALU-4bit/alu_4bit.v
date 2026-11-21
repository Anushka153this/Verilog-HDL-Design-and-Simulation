`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] S,
    output reg [3:0] Y,
    output reg         Cout
);
    always @(*)
    begin
        // Default values
        Y = 4'b0000;
        Cout = 1'b0;
        case (S)
            3'b000: begin
                {Cout, Y} = A + B;
            end
            3'b001: begin
                Y = A - B;
                Cout = (A < B);
            end
            3'b010: begin
                Y = A & B;
            end
            3'b011: begin
                Y = A | B;
            end
            3'b100: begin
                Y = A ^ B;
            end
            3'b101: begin
                Y = ~A;
            end
            3'b110: begin
                {Cout, Y} = A + 1'b1;
            end
            3'b111: begin
                Y = A - 1'b1;
            end
            default: begin
                Y = 4'b0000;
                Cout = 1'b0;
            end
        endcase
    end
endmodule
