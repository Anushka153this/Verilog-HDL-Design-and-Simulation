`timescale 1ns/1ps
module ram64_tb;
    reg clk,WR,RD; reg [5:0] address; reg [7:0] data; wire [7:0] out;
    ram_64x8 dut(.clk(clk),.WR(WR),.RD(RD),.address(address),.data(data),.out(out));
    initial begin clk=0; forever #5 clk=~clk; end
    initial begin
        WR=0; RD=0; address=0; data=0;
        @(negedge clk); address=5; data=25; WR=1;
        @(negedge clk); WR=0; address=10; data=100; WR=1;
        @(negedge clk); WR=0; address=20; data=255; WR=1;
        @(negedge clk); WR=0; RD=1; address=5;
        @(posedge clk); #1;
        @(negedge clk); address=10; @(posedge clk); #1;
        @(negedge clk); address=20; @(posedge clk); #1;
        @(negedge clk); RD=0; #5; $finish;
    end
endmodule
