`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module dff_tb;
    reg clk;
    reg rst_n;
    reg d;
    wire q;
    // Instantiate the D flip-flop
    dff DUT (
        .clk (clk),
        .rst_n (rst_n),
        .d   (d),
        .q   (q)
    );
    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, dff_tb);
        // Start with reset asserted
        rst_n = 0;
        d    = 0;
        @(negedge clk);
        $display("After reset: q = %b (expected 0)", q);
        // Release reset
        rst_n = 1;
        // Apply d = 1, check q follows on next clock edge
        d = 1;
        @(posedge clk); #1;
        $display("time=%0t d=%b q=%b (expected q=1)", $time, d, q);
        // Apply d = 0
        d = 0;
        @(posedge clk); #1;
        $display("time=%0t d=%b q=%b (expected q=0)", $time, d, q);
        // Apply d = 1 again
        d = 1;
        @(posedge clk); #1;
        $display("time=%0t d=%b q=%b (expected q=1)", $time, d, q);
        // Test asynchronous reset while d=1
        rst_n = 0;
        #1;
        $display("Async reset asserted: q = %b (expected 0, mid-cycle)", q);
        rst_n = 1;
        @(posedge clk); #1;
        $display("time=%0t d=%b q=%b (expected q=1)", $time, d, q);
        $display("D-FF testbench complete.");
        $finish;
    end
endmodule
