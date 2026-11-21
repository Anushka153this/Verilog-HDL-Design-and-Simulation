`timescale 1ns/1ns
`include "booth.v"
module booth_tb;
    reg signed [3:0] a;
    reg signed [3:0] b;
    wire signed [7:0] p;
    booth uut (
        .a(a),
        .b(b),
        .p(p)
    );
    initial begin
        $fsdbDumpvars();
        a = 4'sd3; b = -4'sd7; #10;
        $finish;
    end
endmodule
