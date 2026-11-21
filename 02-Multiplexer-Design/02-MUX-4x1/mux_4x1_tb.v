`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module mux_4x1_tb_v;
    // Inputs
    reg [3:0] i;
    reg [1:0] s;
    // Output
    wire y;
    // Instantiate the Unit Under Test (UUT)
    mux_4x1 uut (
        .i(i),
        .s(s),
        .y(y)
    );
    initial begin
        // Test Pattern 1
        i = 4'b0000;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        // Test Pattern 2
        i = 4'b1010;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        // Test Pattern 3
        i = 4'b1100;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        // Test Pattern 4
        i = 4'b1111;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        $stop;
    end
endmodule
