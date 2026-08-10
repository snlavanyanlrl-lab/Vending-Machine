# Vending Machine Controller using Verilog

## Overview

This project implements a simple **Vending Machine Controller** using Verilog HDL.

The vending machine accepts **5-unit** and **10-unit** coins. When the total inserted amount reaches the product price (15 units), the machine dispenses the product. If the inserted amount exceeds the price, change is returned.

---

## Features

- Accepts 5-unit and 10-unit coins
- Product price fixed at 15 units
- Dispenses product automatically
- Returns change for overpayment
- Synchronous design using a clock
- Includes a simulation testbench

---

## Inputs

| Signal | Description |
|--------|-------------|
| clk | System clock |
| rst | Reset |
| coin5 | Insert 5-unit coin |
| coin10 | Insert 10-unit coin |

---

## Outputs

| Signal | Description |
|--------|-------------|
| dispense | Product is dispensed |
| change | Change is returned |

---

## Project Files

- vending_machine.v – Main design
- vending_machine_tb.v – Testbench
- vending_machine.vcd – Waveform file
- simulation.png – Waveform screenshot
- README.md – Documentation

---

## Simulation

Compile:

```bash
iverilog -o vending vending_machine.v vending_machine_tb.v
```

Run:

```bash
vvp vending
```

Open waveform:

```bash
gtkwave vending_machine.vcd
```

---

## Test Cases

| Coins Inserted | Balance | Dispense | Change |
|---------------|---------|----------|--------|
| 5 | 5 | No | No |
| 5 + 10 | 15 | Yes | No |
| 10 + 10 | 20 | Yes | Yes |

---

## Applications

- Digital vending machines
- FPGA learning projects
- Finite State Machine (FSM) design
- Embedded control systems
- Digital electronics laboratories

---

## Future Improvements

- Multiple products with different prices
- LCD display interface
- Coin rejection mechanism
- Inventory management
- Cancel transaction button
- Cashless payment support

---

## License

MIT License

---

## Author

Your Name