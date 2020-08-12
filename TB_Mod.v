`timescale 1ns/1ns
module testbench;
	
	reg inpFreq, washingProgram, faucet, door, do;
	wire fill, warm, wash, drain, dry, f;
	wire [2:0]S;

	Mod mod1(inpFreq, washingProgram, faucet, door, do, fill, warm, wash, drain, dry, f, S);
	
	initial begin
		inpFreq <= 1'b1;
		washingProgram <= 1'b1;
		faucet <= 1'b1;
		door <= 1'b0;
		do <= 1'b0;
		#20 do <= 1'b1;
		#200 washingProgram <= 1'b0;
	end
	always begin
		#5 inpFreq = ~inpFreq;
	end
endmodule
