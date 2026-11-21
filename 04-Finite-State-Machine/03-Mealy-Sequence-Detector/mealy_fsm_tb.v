`timescale 1ns/1ns
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module Mealy_FSM_TB;
    reg clk;
    reg rst;
    reg x;
    wire y;
    // Connect FSM
    Mealy_FSM DUT (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );
    // Clock generation
    always #5 clk = ~clk;
    // Apply input sequence
    initial
    begin
        clk = 0;
        rst = 1;
        x = 0;
        // Reset
        #10;
        rst = 0;
        // Input = 1
        x = 1;
        #10;
        // Input = 0
        x = 0;
        #10;
        // Input = 1
        x = 1;
        #10;
        // Input = 1
        x = 1;
        #10;
        // Input = 0
        x = 0;
        #10;
        // Input = 0
        x = 0;
        #10;
        // Input = 1
        x = 1;
        #10;
        // Input = 0
        x = 0;
        #10;
        // Input = 1
        x = 1;
        #10;
        // Input = 1
        x = 1;
        #10;
        #10;
        $finish;
    end
endmodule
