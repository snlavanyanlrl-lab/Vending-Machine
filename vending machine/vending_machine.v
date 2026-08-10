//=====================================================
// Vending Machine Controller
// Product Price = 15
// Accepts only 5 and 10 unit coins
//=====================================================

module vending_machine(
    input clk,
    input rst,
    input coin5,
    input coin10,
    output reg dispense,
    output reg change
);

parameter PRICE = 15;

reg [4:0] balance;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        balance <= 0;
        dispense <= 0;
        change <= 0;
    end

    else
    begin
        dispense <= 0;
        change <= 0;

        if(coin5)
            balance <= balance + 5;
        else if(coin10)
            balance <= balance + 10;

        if(balance >= PRICE)
        begin
            dispense <= 1;

            if(balance > PRICE)
                change <= 1;

            balance <= 0;
        end
    end

end

endmodule