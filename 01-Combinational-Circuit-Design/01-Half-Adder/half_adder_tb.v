`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Create Date:   09:52:19 07/31/2026
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module ha_df_tb_v;
    // Inputs
    reg a;
    reg b;
    // Outputs
    wire sum;
    wire carry;
    // Instantiate the Unit Under Test (UUT)
    ha_df uut (
        .sum(sum),
        .carry(carry),
        .a(a),
        .b(b)
    );
    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Initialize Inputs
        a = 0;
        b = 1;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 1;
        b = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Initialize Inputs
        a = 1;
        b = 1;
        // Wait 100 ns for global reset to finish
        #100;
    end
endmodule
