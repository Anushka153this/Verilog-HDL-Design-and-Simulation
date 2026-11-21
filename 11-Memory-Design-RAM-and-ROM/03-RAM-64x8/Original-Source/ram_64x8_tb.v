`timescale 1ns / 1ps
`include "full_adder_rtl.v"
module ramm_tb;
    reg clk;
    reg WR, RD;
    reg [5:0] address;
    reg [7:0] data;
    wire [7:0] out;
    // Instantiate RAM
    full_adder uut (
        .clk(clk),
        .WR(WR),
        .RD(RD),
        .address(address),
        .data(data),
        .out(out)
    );
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    // Test sequence
    initial begin
        $fsdbDumpvars();
        // Initialize inputs
        WR = 0;
        RD = 0;
        address = 0;
        data = 0;
        #10;
        // Write 25 into address 5
        @(negedge clk);
        address = 5;
        data = 25;
        WR = 1;
        @(negedge clk);
        WR = 0;
        // Write 100 into address 10
        @(negedge clk);
        address = 10;
        data = 100;
        WR = 1;
        @(negedge clk);
        WR = 0;
        // Write 255 into address 20
        @(negedge clk);
        address = 20;
        data = 255;
        WR = 1;
        @(negedge clk);
        WR = 0;
        // Read address 5
        @(negedge clk);
        address = 5;
        RD = 1;
        @(posedge clk);
        #1;
        $display("Address = %d, Output = %d", address, out);
        // Read address 10
        @(negedge clk);
        address = 10;
        @(posedge clk);
        #1;
        $display("Address = %d, Output = %d", address, out);
        // Read address 20
        @(negedge clk);
        address = 20;
        @(posedge clk);
        #1;
        $display("Address = %d, Output = %d", address, out);
        // Stop reading
        @(negedge clk);
        RD = 0;
        #10;
        $finish;
    end
endmodule
