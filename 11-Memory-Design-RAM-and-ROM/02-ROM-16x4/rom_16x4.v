module rom_16x4(input [3:0] address,input RD,output reg [3:0] out);
 always @(*) begin out=0; if(RD) out=address+4'd1; end
endmodule
