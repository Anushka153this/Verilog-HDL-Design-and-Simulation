module ram_16x4(input clk,input [3:0] address,input [3:0] data,input RD,WR,output reg [3:0] out);
 reg [3:0] mem[0:15]; integer i;
 initial begin out=0; for(i=0;i<16;i=i+1) mem[i]=0; end
 always @(posedge clk) begin if(WR) mem[address]<=data; if(RD) out<=mem[address]; end
endmodule
