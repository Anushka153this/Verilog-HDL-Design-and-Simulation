`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module vending_machine(milk,clk,coin,rst);
    output reg milk;
    input [1:0]coin;
    input clk,rst;
    reg [1:0]state;
    reg [1:0]next_state;
    parameter [1:0]s0 = 2'b00;
    parameter [1:0]s5 = 2'b01;
    parameter [1:0]s10 = 2'b10;
    parameter [1:0]s15 = 2'b11;
    // State register - FIX 1: nonblocking assignments to avoid race
    // between this block and the combinational next_state block.
    always @(posedge clk or posedge rst)
    begin
        if (rst)
            state <= s0;
        else
            state <= next_state;
    end
    // Next-state logic
    always @(state or coin) begin
        case(state)
            s0:
            begin
                if (coin == 2'b00) next_state = s0;
                else if (coin == 2'b01)	// FIX 2: was 1'b01
                    next_state = s5;
                else if (coin == 2'b10) next_state = s10;
                else
                    next_state = s0;	// FIX 3: cover coin == 2'b11
            end
            s5:
            begin
                if (coin == 2'b00) next_state = s5;
                else if (coin == 2'b01) next_state = s10;
                else if (coin == 2'b10) next_state = s15;
                else
                    next_state = s5;
            end
            s10:
            begin
                if (coin == 2'b00) next_state = s10;
                else if (coin == 2'b01) next_state = s15;
                else if (coin == 2'b10) next_state = s0;
                else
                    next_state = s10;
            end
            s15:
            begin
                next_state = s0;
            end
            default: next_state = s0;
        endcase	//case(state)
    end
    // Output logic - FIX 4: milk goes high in s15 (dispense state)
    always @(state)
    begin
        case(state)
            s0: milk <= 1'b0;
            s5: milk <= 1'b0;
            s10: milk <= 1'b0;
            s15: milk <= 1'b1;
            default: milk <= 1'b0;
        endcase	//case(state)
    end
endmodule
