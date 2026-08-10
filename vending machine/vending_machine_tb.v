`timescale 1ns/1ps

module vending_machine_tb;

reg clk;
reg rst;
reg coin5;
reg coin10;

wire dispense;
wire change;

// Instantiate DUT

vending_machine uut(

    .clk(clk),
    .rst(rst),
    .coin5(coin5),
    .coin10(coin10),
    .dispense(dispense),
    .change(change)

);

// Clock Generation

always #5 clk = ~clk;

initial
begin

    $dumpfile("vending_machine.vcd");
    $dumpvars(0,vending_machine_tb);

    clk = 0;
    rst = 1;
    coin5 = 0;
    coin10 = 0;

    #20;
    rst = 0;

    // Insert 5

    #10 coin5 = 1;
    #10 coin5 = 0;

    // Insert 10

    #20 coin10 = 1;
    #10 coin10 = 0;

    // Product Dispensed

    #40;

    // Insert 10

    coin10 = 1;
    #10 coin10 = 0;

    // Insert 10

    #20 coin10 = 1;
    #10 coin10 = 0;

    // Product + Change

    #50;

    $finish;

end

endmodule