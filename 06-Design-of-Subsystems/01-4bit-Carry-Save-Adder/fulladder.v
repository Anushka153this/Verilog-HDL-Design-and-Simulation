// Shared 1-bit full adder dependency for Topic 06
module fulladder(
    input X, Y, Ci,
    output S, Co
);
    assign S  = X ^ Y ^ Ci;
    assign Co = (X & Y) | (X & Ci) | (Y & Ci);
endmodule
