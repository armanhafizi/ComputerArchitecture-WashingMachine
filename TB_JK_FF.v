`timescale 1ns/1ns
module testbench;
	
	reg	J, K, clk;
	wire	Q, Qn;

	JK_FF JK_FF_1(J, K, clk, Q, Qn);
	
	initial begin
		clk <= 1'b1;
		J <= 1'b0;
		K <= 1'b1;
		#30 J <= 1'b1;
		#30 K <= 1'b0;
		#30 J <= 1'b0;
	end
	always begin
		#10 clk = ~clk;
	end
endmodule
