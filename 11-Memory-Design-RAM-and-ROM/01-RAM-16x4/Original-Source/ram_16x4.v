module full_adder(
    input clk,
    input [3:0] address,
    input [3:0] data,
    input RD, WR,
    output reg [3:0] out
);
    reg [3:0] mem [15:0];
    integer i;
    initial begin
        out = 4'b0000;
        for (i = 0; i < 16; i = i + 1)
            mem[i] = 4'b0000;
    end
    always @(posedge clk)
    begin
        if (WR)
            mem[address] <= data;
        if (RD)
            out <= mem[address];
    end
endmodule
