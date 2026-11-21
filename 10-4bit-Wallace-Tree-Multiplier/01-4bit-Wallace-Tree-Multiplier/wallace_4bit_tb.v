`timescale 1ns / 1ps
module wallace_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] p;
    wallace uut (.a(a),.b(b),.p(p));
    initial begin
        $fsdbDumpvars();
        a = 4'd1; b = 4'd1; #20;
        a = 4'd2; b = 4'd3; #20;
        a = 4'd3; b = 4'd5; #20;
        a = 4'd5; b = 4'd6; #20;
        a = 4'd7; b = 4'd9; #20;
        a = 4'd10; b = 4'd5; #20;
        a = 4'd12; b = 4'd3; #20;
        a = 4'd15; b = 4'd8; #20;
        $finish;
    end
endmodule
