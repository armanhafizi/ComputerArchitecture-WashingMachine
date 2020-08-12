`timescale 1ns/1ns
module testbench;
	
	reg	[2:0]S;
	reg	reset;
	wire	[7:0]Q;

	Dec Dec_1(S, reset, Q);
	
	initial begin
		reset = 1'b1;
		#10 reset = 1'b0;
		#10 S = 3'b110; //6
		#10 S = 3'b000; //0
		#10 S = 3'b010; //2
		#10 S = 3'b111; //7
		#10 S = 3'b001; //1
		#10 S = 3'b100; //4
		#10 S = 3'b110; //6
		#10 S = 3'b101; //5
		#10 S = 3'b011; //3
		#10 S = 3'b010; //2
		#10 S = 3'b100; //4
		#10 S = 3'b000; //0
	end
endmodule
