// Corrected 4-bit carry-save adder: three 4-bit operands produce a 6-bit sum.
module carry_save_adder_4bit(
    input [3:0] X, Y, Z,
    output [5:0] Final_Sum,
    output Final_Co
);
    wire [3:0] sum_vec, carry_vec;
    fulladder fa0(.X(X[0]),.Y(Y[0]),.Ci(Z[0]),.S(sum_vec[0]),.Co(carry_vec[0]));
    fulladder fa1(.X(X[1]),.Y(Y[1]),.Ci(Z[1]),.S(sum_vec[1]),.Co(carry_vec[1]));
    fulladder fa2(.X(X[2]),.Y(Y[2]),.Ci(Z[2]),.S(sum_vec[2]),.Co(carry_vec[2]));
    fulladder fa3(.X(X[3]),.Y(Y[3]),.Ci(Z[3]),.S(sum_vec[3]),.Co(carry_vec[3]));
    assign Final_Sum = {2'b00,sum_vec} + {1'b0,carry_vec,1'b0};
    assign Final_Co = Final_Sum[5];
endmodule
