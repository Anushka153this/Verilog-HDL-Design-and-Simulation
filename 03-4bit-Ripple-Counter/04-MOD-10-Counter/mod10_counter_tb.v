`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module mod10_counter_tb;
    reg clk;
    reg rst_n;
    wire [3:0] q;
    wire carry_out;
    integer i;
    mod10_counter DUT (
        .clk      (clk),
        .rst_n     (rst_n),
        .q        (q),
        .carry_out (carry_out)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("mod10_counter.vcd");
        $dumpvars(0, mod10_counter_tb);
        rst_n = 0;
        @(negedge clk);
        rst_n = 1;
        $display("time\tQ3Q2Q1Q0\tdecimal\tcarry");
        for (i = 0; i < 15; i = i + 1) begin
            @(posedge clk); #1;
            $display("%0t\t%b\t%0d\tcarry=%b", $time, q, q, carry_out);
        end
        $display("MOD-10 counter test complete.");
        $finish;
    end
endmodule
