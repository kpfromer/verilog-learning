module top(input clk, output [1:3] led);

// Cycles the leds (it uses a counter to reduce the clock speed to a viewable speed)
// Each bit in the counter is 1/2 the hertz of the previous one
// So if the base clock speed is 100mhz (1e+8hz) the speed at pin 26 is 1.49hz ( 1e+8hz / 2^(25+1) ) (25 + 1 since pin 0 we start from zero)
// 26 bit counter
reg[25:0] counter;
assign led = counter[23:25];
always @(posedge clk) begin
	counter <= counter + 1;
end

endmodule
