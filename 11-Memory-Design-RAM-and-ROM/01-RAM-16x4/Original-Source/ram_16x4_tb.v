`timescale 1ns / 1ps
`include "full_adder_rtl.v"
module ram_tb;
    // Inputs
    reg clk;
    reg [3:0] address;
    reg [3:0] data;
    reg RD;
    reg WR;
    // Outputs
    wire [3:0] out;
    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .clk(clk),
        .address(address),
        .data(data),
        .RD(RD),
        .WR(WR),
        .out(out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $fsdbDumpvars();
        // Initialize Inputs
        address = 0;
        data = 0;
        RD = 0;
        WR = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Write 5 into memory location 2
        @(negedge clk);
        address = 2;
        data = 5;
        WR = 1;
        // Write 9 into memory location 3
        @(negedge clk);
        address = 3;
        data = 9;
        // Stop writing and start reading
        @(negedge clk);
        WR = 0;
        RD = 1;
        address = 2;
        // Read location 2
        @(posedge clk);
        #1;
        $display("Address = %d, Output = %d", address, out);
        // Read location 3
        @(negedge clk);
        address = 3;
        @(posedge clk);
        #1;
        $display("Address = %d, Output = %d", address, out);
        @(negedge clk);
        RD = 0;
        #10;
        $finish;
    end
endmodule
