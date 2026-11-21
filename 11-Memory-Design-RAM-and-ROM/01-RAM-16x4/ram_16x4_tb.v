`timescale 1ns/1ps
module ram_tb;
    reg clk; reg [3:0] address,data; reg RD,WR; wire [3:0] out;
    ram_16x4 dut(.clk(clk),.address(address),.data(data),.RD(RD),.WR(WR),.out(out));
    initial begin clk=0; forever #5 clk=~clk; end
    initial begin
        address=0; data=0; RD=0; WR=0;
        @(negedge clk); address=2; data=5; WR=1;
        @(negedge clk); address=3; data=9;
        @(negedge clk); WR=0; RD=1; address=2;
        @(posedge clk); #1;
        @(negedge clk); address=3;
        @(posedge clk); #1;
        @(negedge clk); RD=0; #5; $finish;
    end
endmodule
