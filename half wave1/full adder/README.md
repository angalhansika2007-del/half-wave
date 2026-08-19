# Half Adder using Verilog

## Overview

A Half Adder is a combinational logic circuit that adds two one-bit binary numbers. It produces two outputs:

- Sum
- Carry

## Boolean Equations

Sum = A XOR B

Carry = A AND B

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
|0|0|0|0|
|0|1|1|0|
|1|0|1|0|
|1|1|0|1|

## Files

- half_adder.v → Verilog design
- half_adder_tb.v → Testbench
- simulation_results.png → Simulation waveform
- README.md → Project documentation

## Simulation

Compile and run using:

```bash
iverilog -o half_adder half_adder.v half_adder_tb.v
vvp half_adder
```

For waveform generation:

```bash
iverilog -o half_adder half_adder.v half_adder_tb.v
vvp half_adder
gtkwave dump.vcd
```

## Output

```
A B | Sum Carry
0 0 | 0 0
0 1 | 1 0
1 0 | 1 0
1 1 | 0 1
```

## Author

Your Name

## License

MIT License