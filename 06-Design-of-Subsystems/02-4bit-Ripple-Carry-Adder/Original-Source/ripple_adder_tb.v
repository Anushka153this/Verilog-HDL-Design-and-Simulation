module tb_rca_v;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    rca_4 uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)    );
    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0011; b = 4'b0101; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 1; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
        $stop;
    end
endmodule
