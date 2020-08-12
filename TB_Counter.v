`timescale 1ns/1ns
module testbench;
	
	reg	clk, reset;
	wire	[2:0]Q;

	Counter C1(clk, reset, Q);
	
	initial begin
		clk = 1'b1; // 1
		reset = 1'b0; // 0
		#20  reset = 1'b1; // 1
		#10 reset = 1'b0; // 0
	end
	always begin
		#10 clk = ~clk;
	end
endmodule