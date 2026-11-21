`timescale 1ns/1ps
module braun_array_multiplier_4bit_tb;
    reg [3:0] A, B;
    wire [7:0] P;
    integer i,j;
    braun_array_multiplier_4bit dut(.A(A),.B(B),.P(P));
    initial begin
        for (i=0;i<16;i=i+1) begin
            for (j=0;j<16;j=j+1) begin
                A=i; B=j; #1;
                if (P !== i*j) $display("FAIL A=%0d B=%0d P=%0d expected=%0d",i,j,P,i*j);
            end
        end
        $finish;
    end
endmodule
