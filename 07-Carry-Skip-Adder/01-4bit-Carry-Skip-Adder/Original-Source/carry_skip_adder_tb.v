`timescale 1ns / 1ps
module csa_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    // Instantiate Carry Skip Adder
    csa DUT(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    integer i;
    integer j;
    integer k;
    initial begin
        $display("A B Cin | Cout Sum");
        $display("	");
        // Test all 256 possible combinations
        for (i = 5; i < 16; i = i + 1) begin
            for (j = 4; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    A = i;
                    B = j;
                    Cin = k;
                    #10;
                    $display("%b %b %b | %b %b", A, B, Cin, Cout, Sum);
                end
            end
        end
        $finish;
    end
endmodule
