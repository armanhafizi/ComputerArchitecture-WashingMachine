`timescale 1ns/1ns
module testbench;
	
	reg	inpClk, reset;
	wire	S;

	FreqDiv FD1(inpClk, reset, S);
	
	initial begin
		inpClk = 1'b1; // 1
		reset = 1'b0; // 0
		#20  reset = 1'b1; // 1
		#10 reset = 1'b0; // 0
	end
	always begin
		#10 inpClk = ~inpClk;
	end
endmodule