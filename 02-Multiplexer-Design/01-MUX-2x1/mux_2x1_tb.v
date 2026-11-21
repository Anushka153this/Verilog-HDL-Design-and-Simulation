`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module mux_2x1_tb;
    // Inputs
    reg s;
    reg a;
    reg b;
    // Output
    wire y;
    // Instantiate DUT
    mux_2x1 uut (
        .s(s),
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin
        // Test Case 1
        s = 0; a = 0; b = 0;
        #10;
        // Test Case 2
        s = 0; a = 0; b = 1;
        #10;
        // Test Case 3
        s = 0; a = 1; b = 0;
        #10;
        // Test Case 4
        s = 0; a = 1; b = 1;
        #10;
        // Test Case 5
        s = 1; a = 0; b = 0;
        #10;
        // Test Case 6
        s = 1; a = 0; b = 1;
        #10;
        // Test Case 7
        s = 1; a = 1; b = 0;
        #10
        // Test Case 8
        s = 1; a = 1; b = 1;
        #10;
        $stop;
    end
endmodule
