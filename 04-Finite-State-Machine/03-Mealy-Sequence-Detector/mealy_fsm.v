`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module Mealy_FSM(
    input clk,
    input rst,
    input x,
    output reg y
);
    reg [1:0] state, next_state;
    parameter S0 = 2'b00,
    S1 = 2'b01,
    S2 = 2'b10,
    S3 = 2'b11;
    // State register
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end
    // Next state and output logic
    always @(*)
    begin
        y = 0;
        case(state)
            // No matching bits
            S0:
            begin
                if (x == 1) next_state = S1;
                else
                    next_state = S0;
            end
            // Detected 1
            S1:
            begin
                if (x == 0) next_state = S2;
                else
                    next_state = S1;
            end
            // Detected 10
            S2:
            begin
                if (x == 1) next_state = S3;
                else
                    next_state = S0;
            end
            // Detected 101
            S3:
            begin
                if (x == 1) begin
                    next_state = S1;
                    y = 1;
                end
                else begin
                    next_state = S2;
                end
            end
            default:
            next_state = S0;
        endcase
    end
endmodule
