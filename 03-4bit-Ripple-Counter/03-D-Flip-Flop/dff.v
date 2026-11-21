`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module dff (
    input wire clk,
    input wire rst_n, // active-low asynchronous reset
    input wire d,
    output reg q
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0; // reset output to 0
        else
            q <= d;        // capture D input on rising clock edge
    end
endmodule
