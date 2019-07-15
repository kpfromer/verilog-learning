# verilog-learning

## Current Setup

I currently own the ice40-hx1k-tq144 fpga chip.

The following is the [recommended options for the Project Icestorm tools](http://www.clifford.at/icestorm/).

| Part             | Package                   | Pin Spacing | I/Os | nextpnr ops            | arachne-pnr opts | icetime opts |
|------------------|---------------------------|-------------|------|------------------------|------------------|--------------|
| iCE40-HX1K-TQ144 | 144-pin TQFP (20 x 20 mm) | 0.50 mm     | 96   | --hx1k --package tq144 | -d 1k -P tq144   | -d hx1k      |

The pinout for the entire ice40hx1k-stick-evn board is located in the [pdf](icestickusermanual.pdf).
Also look at this https://medium.com/@luke_73359/getting-started-with-icestorm-verilog-on-the-ice40hx1k-fpga-cbc71ad3947d

## File Structure

### verilog

The verilog file `.v` defines the logical wiring of the module

### Physical Constraints File (PCF)

The physical constraints file `.pcf` defines the physical mapping (according to the pinout of the specific circuit) of the input and output wires for the verilog module.
