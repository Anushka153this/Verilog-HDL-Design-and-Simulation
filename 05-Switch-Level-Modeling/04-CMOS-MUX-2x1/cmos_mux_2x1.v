`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module cmos_mux_2x1(out,in_a,in_b,s);
    input in_a,in_b,s;
    output out;
    wire sbar;
    supply0 vss;
    supply1 vdd;
    pmos p1(sbar,vdd,s);
    nmos n1(sbar,vss,s);
    cmos c1(out,in_a,sbar,s);
    cmos c2(out,in_b,s,sbar);
endmodule
