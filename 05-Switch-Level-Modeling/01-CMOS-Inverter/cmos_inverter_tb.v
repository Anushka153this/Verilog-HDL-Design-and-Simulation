`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module cmos_inverter_tb_v;
    reg in;
    wire out;
    cmos_inverter uut (
        .out(out),
        .in(in)
    );
    initial begin
        in = 0;
        #100;
        in = 1;
        #100;
        // Add stimulus here
        $finish;
    end
endmodule
