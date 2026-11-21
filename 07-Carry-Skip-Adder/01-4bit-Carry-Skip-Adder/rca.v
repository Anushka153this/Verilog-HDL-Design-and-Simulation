// Four-bit ripple-carry adder with bit propagate outputs.
module rca(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout,
    output [3:0] P
);
    wire [4:0] C;
    assign C[0] = Cin;
    assign P = A ^ B;
    assign Sum = P ^ C[3:0];
    assign C[1] = (A[0]&B[0]) | (P[0]&C[0]);
    assign C[2] = (A[1]&B[1]) | (P[1]&C[1]);
    assign C[3] = (A[2]&B[2]) | (P[2]&C[2]);
    assign C[4] = (A[3]&B[3]) | (P[3]&C[3]);
    assign Cout = C[4];
endmodule
