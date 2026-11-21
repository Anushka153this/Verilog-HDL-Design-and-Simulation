`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module RCA_SM(s, cout, a, b, cin);
    output [3:0] s;
    output cout;
    input [3:0] a;
    input [3:0] b;
    input cin;
    wire w1,w2,w3;
    fa_ha FA1(s[0],w1,a[0],b[0],cin);
    fa_ha FA2(s[1],w2,a[1],b[1],w1);
    fa_ha FA3(s[2],w3,a[2],b[2],w2);
    fa_ha FA4(s[3],cout,a[3],b[3],w3);
endmodule
