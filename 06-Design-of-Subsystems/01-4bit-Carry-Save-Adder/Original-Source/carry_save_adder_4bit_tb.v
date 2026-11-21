module tb_carry_save_adder_4bit;
    reg [3:0] X;
    reg [3:0] Y;
    reg [3:0] Z;
    wire [4:0] Final_Sum;
    wire Final_Co;
    carry_save_adder_4bit uut (
        .X(X),
        .Y(Y),
        .Z(Z),
        .Final_Sum(Final_Sum),
        .Final_Co(Final_Co) );
    initial begin
        $fsdbDumpvars();
        X = 4'b0000;
        Y = 4'b0000;
        Z = 4'b0000;
        #10;
        X = 4'd1; Y = 4'd2; Z = 4'd3;
        #10;
        X = 4'd5; Y = 4'd5; Z = 4'd5;
        #10;
        X = 4'd10; Y = 4'd5; Z = 4'd12;
        #10;
        X = 4'b1111; Y = 4'b1111; Z = 4'b1111;
        #10;
        X = 4'd0; Y = 4'd0; Z = 4'd0;
        #10;
        $finish;
    end
endmodule
