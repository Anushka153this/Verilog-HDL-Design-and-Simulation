`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module tff_tb;
    reg t;
    reg clk;
    reg rst;
    wire q;
    // Instantiate the Unit Under Test (UUT)
    tff uut (
        .q(q),
        .clk(clk),
        .rst(rst),
        .t(t)
    );
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    // Test cases
    initial begin
        // Initial values
        t = 0;
        rst = 1;
        // Reset
        #10;
        rst = 0;
        // T = 0 -> Q should remain unchanged
        t = 0;
        #20;
        // T = 1 -> Q should toggle at every falling edge
        t = 1;
        #40;
        // T = 0 -> Q should hold its current value
        t = 0;
        #20;
        // Apply reset again
        rst = 1;
        #10;
        rst = 0;
        t = 1;
        #30;
        $finish;
    end
endmodule
