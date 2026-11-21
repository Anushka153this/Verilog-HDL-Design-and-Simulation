module full_adder (
    input clk,
    input WR,
    input RD,
    input [5:0] address,
    input [7:0] data,
    output reg [7:0] out
);
    reg [7:0] mem [0:63];
    integer i;
    // Initialize memory
    initial begin
        out = 8'b00000000;
        for (i = 0; i < 64; i = i + 1)
            mem[i] = 8'b00000000;
    end
    // Read and write operations
    always @(posedge clk) begin
        if (WR)
            mem[address] <= data;
        if (RD)
            out <= mem[address];
    end
endmodule
