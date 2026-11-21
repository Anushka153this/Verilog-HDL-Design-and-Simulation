`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module cmos_mux_2x1_tb_v;
    reg in_a;
    reg in_b;
    reg s;
    wire out;
    cmos_mux_2x1 uut (
        .out(out),
        .in_a(in_a),
        .in_b(in_b),
        .s(s)
    );
    initial begin
        in_a = 1;
        in_b = 0;
        s = 0;
        #100;
        in_a = 1;
        in_b = 0;
        s = 1;
        #100;
        $finish;
    end
endmodule
