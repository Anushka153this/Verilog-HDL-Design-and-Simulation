`timescale 1ns/1ps
module tb_rca_v;
    reg [3:0] X, Y;
    wire [3:0] S;
    wire Co;
    ripple_adder dut (.X(X), .Y(Y), .S(S), .Co(Co));
    initial begin
        X=4'b0000; Y=4'b0000; #10;
        X=4'b0011; Y=4'b0101; #10;
        X=4'b1111; Y=4'b0001; #10;
        X=4'b1010; Y=4'b0101; #10;
        X=4'b1111; Y=4'b1111; #10;
        $finish;
    end
endmodule
