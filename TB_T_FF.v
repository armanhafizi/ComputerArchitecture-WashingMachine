`timescale 1ns/1ns
module testbench;
	
	reg	clk, rst, T;
	wire	Q;

	T_FF inst_1(T, clk, rst, Q);
	
	initial begin
		clk = 1'b1; // 1
		rst = 1'b0; // 0
		T = 1'b0; // 0
		#20  rst = 1'b1; // 1
		#40 rst = 1'b0; // 0
		T = 1'b1;
		#90 T = 1'b0;
	end
	always begin
		#10 clk = ~clk;
	end
endmodule