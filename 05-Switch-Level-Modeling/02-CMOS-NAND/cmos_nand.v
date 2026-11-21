`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module cmos_nand(out,in_a,in_b);
    input in_a,in_b;
    output out;
    wire x;
    supply0 gnd;
    supply1 vdd;
    pmos p1(out,vdd,in_a);
    pmos p2(out,vdd,in_b);
    nmos n1(out,x,in_a);
    nmos n2(x,gnd,in_b);
endmodule
