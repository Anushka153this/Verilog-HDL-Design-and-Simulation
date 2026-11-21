`timescale 1ns / 1ps
module booth_v(
    input signed [3:0] A,
    input signed [3:0] B,
    output reg signed [7:0] P
);
    integer i;
    reg signed [4:0] ACC;
    reg signed [3:0] Q;
    reg Q_1;
    reg signed [4:0] M;
    reg temp;
    always @(*) begin
        ACC = 5'd0;
        Q = B;
        Q_1 = 1'b0;
        M = {A[3], A};
        for (i = 0; i < 4; i = i + 1) begin
            case ({Q[0], Q_1})
                2'b01: ACC = ACC + M;
                2'b10: ACC = ACC - M;
                default: ACC = ACC;
            endcase
            temp = ACC[0];
            Q_1 = Q[0];
            Q = {temp, Q[3:1]};
            ACC = {ACC[4], ACC[4:1]};
        end
        P = {ACC[3:0], Q};
    end
endmodule
