`timescale 1ns/1ps
module carry_skip_adder_tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    integer i,j,k;
    reg [4:0] expected;
    csa dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    initial begin
        for (i=0;i<16;i=i+1) begin
            for (j=0;j<16;j=j+1) begin
                for (k=0;k<2;k=k+1) begin
                    A=i; B=j; Cin=k; #1; expected=i+j+k;
                    if ({Cout,Sum} !== expected)
                        $display("FAIL A=%0d B=%0d Cin=%0d got=%b expected=%b",i,j,k,{Cout,Sum},expected);
                end
            end
        end
        $finish;
    end
endmodule
