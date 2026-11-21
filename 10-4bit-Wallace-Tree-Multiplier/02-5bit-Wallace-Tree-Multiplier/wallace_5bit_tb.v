`timescale 1ns / 1ps
module wallace_5x5_tb_v;
    reg [4:0] a;
    reg [4:0] b;
    wire [9:0] p;
    wallace_5x5 uut (.A(a), .B(b), .P(p));
    initial begin
        $fsdbDumpvars();
        a = 5'd15; b = 5'd15; #20;
        a = 5'd23; b = 5'd7; #20;
        a = 5'd10; b = 5'd20; #20;
        a = 5'd18; b = 5'd13; #20;
        a = 5'd27; b = 5'd14; #20;
        a = 5'd31; b = 5'd31; #20;
        $finish;
    end
endmodule
