`timescale 1ns / 1ps
`include "full_adder_rtl.v"
module rom_tb;
    reg [3:0] address;
    reg RD;
    wire [3:0] out;
    full_adder uut(
        .address(address),
        .RD(RD),
        .out(out)
    );
    initial begin
        $fsdbDumpvars();
        address = 4'd0;
        RD = 1'b0;
        #10;
        RD = 1'b1;
        address = 4'd0; #10;
        address = 4'd1; #10;
        address = 4'd2; #10;
        address = 4'd3; #10;
        address = 4'd4; #10;
        address = 4'd5; #10;
        address = 4'd6; #10;
        address = 4'd7; #10;
        address = 4'd8; #10;
        address = 4'd9; #10;
        address = 4'd10; #10;
        address = 4'd11; #10;
        address = 4'd12; #10;
        address = 4'd13; #10;
        address = 4'd14; #10;
        address = 4'd15; #10;
        RD = 1'b0;
        address = 4'd0;
        #10;
        $finish;
    end
endmodule
