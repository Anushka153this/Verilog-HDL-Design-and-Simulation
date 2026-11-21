`timescale 1ns / 1ps
module full_adder(
    input a,b,cin,
    output sum,carry
);
    assign sum = a ^ b ^ cin;
    assign carry = (a&b)|(b&cin)|(a&cin);
endmodule
module half_adder(
    input a,b,
    output sum,carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule
module wallace(
    input [3:0] a,b,
    output [7:0] p
);
    wire pp00,pp01,pp02,pp03;
    wire pp10,pp11,pp12,pp13;
    wire pp20,pp21,pp22,pp23;
    wire pp30,pp31,pp32,pp33;
    and(pp00,a[0],b[0]);
    and(pp01,a[1],b[0]);
    and(pp02,a[2],b[0]);
    and(pp03,a[3],b[0]);
    and(pp10,a[0],b[1]);
    and(pp11,a[1],b[1]);
    and(pp12,a[2],b[1]);
    and(pp13,a[3],b[1]);
    and(pp20,a[0],b[2]);
    and(pp21,a[1],b[2]);
    and(pp22,a[2],b[2]);
    and(pp23,a[3],b[2]);
    and(pp30,a[0],b[3]);
    and(pp31,a[1],b[3]);
    and(pp32,a[2],b[3]);
    and(pp33,a[3],b[3]);
    /* Wallace Reduction */
    wire s1,c1;
    wire s2,c2;
    wire s3,c3;
    wire s4,c4;
    wire s5,c5;
    wire s6,c6;
    wire s7,c7;
    wire s8,c8;
    wire s9,c9;
    half_adder HA1(pp01,pp10,s1,c1);
    full_adder FA1(pp02,pp11,pp20,s2,c2);
    full_adder FA2(pp03,pp12,pp21,s3,c3);
    full_adder FA3(s3,pp30,c2,s4,c4);
    full_adder FA4(pp13,pp22,pp31,s5,c5);
    full_adder FA5(c3,c4,s5,s6,c6);
    full_adder FA6(pp23,pp32,c5,s7,c7);
    half_adder HA2(c6,s7,s8,c8);
    full_adder FA7(pp33,c7,c8,s9,c9);
    /* Final Addition */
    wire c10,c11;
    assign p[0] = pp00;
    assign p[1] = s1;
    half_adder HA3(s2,c1,p[2],c10);
    half_adder HA4(s4,c10,p[3],c11);
    half_adder HA5(s6,c11,p[4],c10);
    half_adder HA6(s8,c10,p[5],c11);
    half_adder HA7(s9,c11,p[6],c10);
    assign p[7] = c9;
endmodule
