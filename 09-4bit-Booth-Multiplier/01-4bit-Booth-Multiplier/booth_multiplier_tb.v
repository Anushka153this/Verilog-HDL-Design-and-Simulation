`timescale 1ns/1ps
module booth_multiplier_tb;
    reg signed [3:0] A, B;
    wire signed [7:0] P;
    integer i,j;
    booth_v dut(.A(A),.B(B),.P(P));
    initial begin
        for (i=-8;i<=7;i=i+1) begin
            for (j=-8;j<=7;j=j+1) begin
                A=i; B=j; #1;
                if (P !== (i*j)) $display("FAIL A=%0d B=%0d P=%0d expected=%0d",i,j,P,i*j);
            end
        end
        $finish;
    end
endmodule
