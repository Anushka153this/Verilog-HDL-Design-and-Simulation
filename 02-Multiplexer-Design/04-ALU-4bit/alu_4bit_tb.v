`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module alu_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] S;
    wire [3:0] Y;
    wire Cout;
    // Instantiate ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y),
        .Cout(Cout)
    );
    initial begin
        // Test values
        A = 4'b0101; // 5
        B = 4'b0011; // 3
        // Addition
        S = 3'b000;
        #10;
        // Subtraction
        S = 3'b001;
        #10;
        // AND
        S = 3'b010;
        #10;
        // OR
        S = 3'b011;
        #10;
        // XOR
        S = 3'b100;
        #10;
        // NOT A
        S = 3'b101;
        #10;
        // Increment A
        S = 3'b110;
        #10;
        // Decrement A
        S = 3'b111;
        #10;
        $stop;
    end
endmodule
