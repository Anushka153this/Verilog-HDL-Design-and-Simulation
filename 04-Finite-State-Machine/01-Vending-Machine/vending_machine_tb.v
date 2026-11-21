`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Testbench for vending_machine (fixed version)
// Author : Anushka Gope
////////////////////////////////////////////////////////////////////////////////
module vending_machine_tb;
    reg [1:0] coin;
    reg clk, rst;
    wire milk;
    // Instantiate DUT
    vending_machine uut (
        .milk(milk),
        .clk(clk),
        .coin(coin),
        .rst(rst)
    );
    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;
    // Task to apply a coin for one clock cycle
    task insert_coin(input [1:0] c);
        begin
            coin = c;
            @(posedge clk);
            #1; // small delay to let state update settle
        end
    endtask
    initial begin
        $display("Time\tState\tCoin\tMilk");
        $monitor("%0t\t%b\t%b\t%b", $time, uut.state, coin, milk);
        // Reset
        rst = 1;
        coin = 2'b00;
        #10;
        rst = 0;
        // Test 1: s0 -> s5 -> s10 -> s15 (dispense) -> s0
        insert_coin(2'b01); // s0 -> s5
        insert_coin(2'b01); // s5 -> s10
        insert_coin(2'b01); // s10 -> s15 milk should go HIGH here
        insert_coin(2'b00); // s15 -> s0	milk goes back LOW
        // Test 2: s0 -> s10 -> s0 (using 10rs coins)
        insert_coin(2'b10); // s0 -> s10
        insert_coin(2'b10); // s10 -> s0
        // Test 3: mixed coins s0 -> s5 -> s15 (dispense)
        insert_coin(2'b01); // s0 -> s5
        insert_coin(2'b10); // s5 -> s15	milk should go HIGH here
        insert_coin(2'b01); // s15 -> s0
        // Test 4: idle (no coin) holds state
        insert_coin(2'b00);
        insert_coin(2'b00);
        // Test 5: mid-reset check
        rst = 1;
        #10;
        rst = 0;
        insert_coin(2'b01);
        #20;
        $finish;
    end
endmodule
