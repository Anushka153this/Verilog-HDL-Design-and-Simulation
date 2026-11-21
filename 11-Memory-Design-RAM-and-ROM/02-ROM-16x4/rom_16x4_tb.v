`timescale 1ns/1ps
module rom_tb;
    reg [3:0] address; reg RD; wire [3:0] out; integer i;
    rom_16x4 dut(.address(address),.RD(RD),.out(out));
    initial begin
        RD=0; address=0; #5; RD=1;
        for (i=0;i<16;i=i+1) begin address=i; #5; end
        RD=0; #5; $finish;
    end
endmodule
