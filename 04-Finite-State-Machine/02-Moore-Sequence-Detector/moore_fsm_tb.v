`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module Moore_FSM_TB;
    reg clk;
    reg rst;
    reg x;
    wire y;
    // Connect the Moore FSM
    Moore_FSM DUT (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );
    // Generate clock
    always #5 clk = ~clk;
    // Apply inputs
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
