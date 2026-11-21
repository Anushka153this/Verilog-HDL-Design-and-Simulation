`timescale 1ns/1ps
module decoder3x8_tb;
    reg E, A2, A1, A0;
    wire [7:0] Y;
    integer i;
    decoder3x8 dut (.E(E), .A2(A2), .A1(A1), .A0(A0), .Y(Y));
    initial begin
        E=1'b0; A2=0; A1=0; A0=0; #10;
        if (Y !== 8'b0) $display("FAIL: disabled output not zero");
        E=1'b1;
        for (i=0; i<8; i=i+1) begin
            {A2,A1,A0}=i[2:0]; #10;
            if (Y !== (8'b00000001 << i))
                $display("FAIL: input %b expected %b got %b", {A2,A1,A0}, (8'b1<<i), Y);
            else $display("PASS: input %b output %b", {A2,A1,A0}, Y);
        end
        $finish;
    end
endmodule
