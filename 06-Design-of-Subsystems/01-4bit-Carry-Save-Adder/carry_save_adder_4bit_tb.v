`timescale 1ns/1ps
module carry_save_adder_4bit_tb;
    reg [3:0] X,Y,Z; wire [5:0] Final_Sum; wire Final_Co;
    integer i,j,k; reg [5:0] expected;
    carry_save_adder_4bit dut(.X(X),.Y(Y),.Z(Z),.Final_Sum(Final_Sum),.Final_Co(Final_Co));
    initial begin
      for(i=0;i<16;i=i+1) for(j=0;j<16;j=j+1) for(k=0;k<16;k=k+1) begin
        X=i; Y=j; Z=k; expected=i+j+k; #1;
        if(Final_Sum !== expected) $display("FAIL X=%0d Y=%0d Z=%0d got=%0d expected=%0d",i,j,k,Final_Sum,expected);
      end
      $finish;
    end
endmodule
