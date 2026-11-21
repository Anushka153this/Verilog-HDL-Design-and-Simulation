`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module fa_ha(sum,carry,a, b, cin);
    input a;
    input b;
    input cin;
    output sum;
    output carry;
    wire w1,w2,w3;
    ha_df ha1(w1,w2,a,b);
    ha_df ha2(sum,w3,w1,cin);
    or g1(carry,w2,w3);
endmodule
