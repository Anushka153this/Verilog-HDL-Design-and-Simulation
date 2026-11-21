`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module tff(q,clk,rst,t);
    input t,clk,rst;
    output reg q;
    always@(negedge clk or posedge rst)
    begin
        if (rst == 1)
            q<=1'b0;
        else
            if(t)
            q<=~q;
        else
            q<=q;
    end
endmodule
