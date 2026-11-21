`timescale 1ns / 1ps
module wallace_5x5 (
    input [4:0] A,
    input [4:0] B,
    output [9:0] P
);
    wire [4:0] p0, p1, p2, p3, p4;
    assign p0 = A & {5{B[0]}};
    assign p1 = A & {5{B[1]}};
    assign p2 = A & {5{B[2]}};
    assign p3 = A & {5{B[3]}};
    assign p4 = A & {5{B[4]}};
    wire s1_1, c1_2;
    wire s1_2, c1_3;
    wire s1_3, c1_4;
    wire s1_4a, c1_5a, s1_4b, c1_5b;
    wire s1_5, c1_6;
    wire s1_6, c1_7;
    wire s1_7, c1_8;
    // Stage 1 Instantiations
    half_adder ha1_1 (.a(p0[1]), .b(p1[0]), .sum(s1_1), .cout(c1_2));
    full_adder fa1_2 (.a(p0[2]), .b(p1[1]), .cin(p2[0]), .sum(s1_2), .cout(c1_3));
    full_adder fa1_3 (.a(p0[3]), .b(p1[2]), .cin(p2[1]), .sum(s1_3), .cout(c1_4)); // p3[0] uncompressed
    full_adder fa1_4a (.a(p0[4]), .b(p1[3]), .cin(p2[2]), .sum(s1_4a), .cout(c1_5a));
    half_adder ha1_4b (.a(p3[1]), .b(p4[0]), .sum(s1_4b), .cout(c1_5b));
    full_adder fa1_5 (.a(p1[4]), .b(p2[3]), .cin(p3[2]), .sum(s1_5), .cout(c1_6)); // p4[1] uncompressed
    full_adder fa1_6 (.a(p2[4]), .b(p3[3]), .cin(p4[2]), .sum(s1_6), .cout(c1_7));
    half_adder ha1_7 (.a(p3[4]), .b(p4[3]), .sum(s1_7), .cout(c1_8));
    // Stage 2 Wires
    wire s2_2, c2_3;
    wire s2_3, c2_4;
    wire s2_4, c2_5;
    wire s2_5, c2_6;
    wire s2_6, c2_7;
    wire s2_7, c2_8;
    wire s2_8, c2_9;
    // Stage 2 Instantiations
    half_adder ha2_2 (.a(s1_2), .b(c1_2), .sum(s2_2), .cout(c2_3));
    full_adder fa2_3 (.a(s1_3), .b(p3[0]), .cin(c1_3), .sum(s2_3), .cout(c2_4));
    full_adder fa2_4 (.a(s1_4a), .b(s1_4b), .cin(c1_4), .sum(s2_4), .cout(c2_5));
    full_adder fa2_5 (.a(s1_5), .b(p4[1]), .cin(c1_5a), .sum(s2_5), .cout(c2_6)); // c1_5b uncompressed
    half_adder ha2_6 (.a(s1_6), .b(c1_6), .sum(s2_6), .cout(c2_7));
    half_adder ha2_7 (.a(s1_7), .b(c1_7), .sum(s2_7), .cout(c2_8));
    half_adder ha2_8 (.a(p4[4]), .b(c1_8), .sum(s2_8), .cout(c2_9));
    // Stage 3 Wires
    wire s3_3, c3_4;
    wire s3_4, c3_5;
    wire s3_5, c3_6;
    wire s3_6, c3_7;
    wire s3_7, c3_8;
    wire s3_8, c3_9;
    // Stage 3 Instantiations
    half_adder ha3_3 (.a(s2_3), .b(c2_3), .sum(s3_3), .cout(c3_4));
    half_adder ha3_4 (.a(s2_4), .b(c2_4), .sum(s3_4), .cout(c3_5));
    full_adder fa3_5 (.a(s2_5), .b(c1_5b), .cin(c2_5), .sum(s3_5), .cout(c3_6));
    half_adder ha3_6 (.a(s2_6), .b(c2_6), .sum(s3_6), .cout(c3_7));
    half_adder ha3_7 (.a(s2_7), .b(c2_7), .sum(s3_7), .cout(c3_8));
    half_adder ha3_8 (.a(s2_8), .b(c2_8), .sum(s3_8), .cout(c3_9));
    // 3. Final Carry Propagate Adder (CPA)
    wire [9:0] final_row_1 = {c2_9, s3_8, s3_7, s3_6, s3_5, s3_4, s3_3, s2_2, s1_1, p0[0]};
    wire [9:0] final_row_2 = {c3_9, c3_8, c3_7, c3_6, c3_5, c3_4, 1'b0, 1'b0, 1'b0, 1'b0};
    // The + operator synthesizes into an optimized CPA
    assign P = final_row_1 + final_row_2;
endmodule
module half_adder (
    input a, b,
    output sum, cout
);
    assign sum = a ^ b;
    assign cout = a & b;
endmodule
module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule
