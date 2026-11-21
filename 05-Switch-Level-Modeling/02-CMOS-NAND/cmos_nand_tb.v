`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module cmos_nand_tb_v;
    reg in_a;
    reg in_b;
    wire out;
    cmos_nand uut (
        .out(out),
        .in_a(in_a),
        .in_b(in_b)
    );
    initial begin
        in_a = 0;
        in_b = 0;
        #100;
        in_a = 0;
        in_b = 1;
        #100;
        in_a = 1;
        in_b = 0;
        #100;
        in_a = 1;
        in_b = 1;
        #100;
        $finish;
    end
endmodule
