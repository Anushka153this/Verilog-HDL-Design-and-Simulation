`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module RCA_SM_Tb_v;
    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    // Outputs
    wire [3:0] s;
    wire cout;
    // Instantiate the Unit Under Test (UUT)
    RCA_SM uut (
        .s(s),
        .cout(cout),
        .a(a),
        .b(b),
        .cin(cin)
    );
    initial begin
        // Initialize Inputs
        a = 1100;
        b = 0010;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Initialize Inputs
        a = 1111;
        b = 0000;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Initialize Inputs
        a = 0101;
        b = 1010;
        cin = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
        // Initialize Inputs
        a = 0011;
        b = 1000;
        cin = 1;
        // Wait 100 ns for global reset to finish
        #100;
    end
endmodule
