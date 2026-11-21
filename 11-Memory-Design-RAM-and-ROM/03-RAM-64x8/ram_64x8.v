module ram_64x8(input clk,input WR,RD,input [5:0] address,input [7:0] data,output reg [7:0] out);
 reg [7:0] mem[0:63]; integer i;
 initial begin out=0; for(i=0;i<64;i=i+1) mem[i]=0; end
 always @(posedge clk) begin if(WR) mem[address]<=data; if(RD) out<=mem[address]; end
endmodule
