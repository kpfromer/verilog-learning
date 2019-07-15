# Remove old files

rm demo.blif demo.asc demo.bin

# Build
yosys -q -p "synth_ice40 -blif demo.blif" top.v
#yosys -q -p --hx1k --package tq144
arachne-pnr -d 1k -P tq144 -p demo.pcf demo.blif -o demo.asc
icepack demo.asc demo.bin
