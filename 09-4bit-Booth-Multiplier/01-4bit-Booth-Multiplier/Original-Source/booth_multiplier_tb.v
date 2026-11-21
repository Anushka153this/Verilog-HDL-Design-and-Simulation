`timescale 1ns / 1ps
module booth _tb;
    reg signed [3:0] A;
    reg signed [3:0] B;
    wire signed [7:0] P;
    booth uut (
        .A(A),
        .B(B),
        .P(P)
    );
    initial begin
        $fsdbDumpvars();
        // 1. Zero Cases
        A = 4'sd0; B = 4'sd0; #10;
        A = 4'sd0; B = 4'sd5; #10;
        A = -4'sd6; B = 4'sd0; #10;
        // 2. Identity & Sign Inversion (+1, -1)
        A = 4'sd5; B = 4'sd1; #10;
        A = 4'sd5; B = -4'sd1; #10;
        A = -4'sd5; B = -4'sd1; #10;
        // 3. Positive * Positive
        A = 4'sd2; B = 4'sd3; #10;
        A = 4'sd4; B = 4'sd5; #10;
        A = 4'sd7; B = 4'sd7; #10;
        // 4. Positive * Negative & Negative * Positive
        A = 4'sd6; B = -4'sd7; #10;
        A = -4'sd7; B = 4'sd7; #10;
        A = 4'sd3; B = -4'sd4; #10;
        // 5. Negative * Negative
        A = -4'sd2; B = -4'sd3; #10;
        A = -4'sd7; B = -4'sd7; #10;
        // 6. Extreme Boundary Edge Cases (-8)
        A = -4'sd8; B = 4'sd1; #10;
        A = -4'sd8; B = 4'sd7; #10;
        A = -4'sd8; B = -4'sd1; #10;
        A = -4'sd8; B = -4'sd8; #10;
        $finish;
    end
endmodule
