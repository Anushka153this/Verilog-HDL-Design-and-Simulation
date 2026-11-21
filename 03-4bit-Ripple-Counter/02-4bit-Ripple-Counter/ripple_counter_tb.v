`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module rc_tb;
    reg clk, rst;
    wire [3:0] q;
    rc uut(q, clk, rst);
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #180 $finish;
    end
    initial begin
        $monitor("Time=%0t clk=%b rst=%b q=%b",
            $time, clk, rst, q);
    end
endmodule
