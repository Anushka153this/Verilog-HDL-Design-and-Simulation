`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module ha_ha_tb_v;
    // Inputs
    reg a;
    reg b;
    reg cin;
    // Outputs
    wire sum;
    wire carry;
    // Instantiate the Unit Under Test (UUT)
    fa_ha uut (
        .sum(sum),
        .carry(carry),
        .a(a),
        .b(b),
        .cin(cin)
    );
    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Initialize Inputs
        a = 0;
        b = 0;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 0;
        b = 1;
        cin = 0
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 0;
        b = 1;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 1;
        b = 0;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Input
        a = 1;
        b = 0;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 1;
        b = 1;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 1;
        b = 1;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
    end
endmodule
