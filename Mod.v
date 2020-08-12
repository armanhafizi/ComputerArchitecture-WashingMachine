module Mod(inpFreq, washingProgram, faucet, door, do, fill, warm, wash, drain, dry, f, S);

	input inpFreq, washingProgram, faucet, door, do;
	output fill, warm, wash, drain, dry, f;

	wire [2:0]W;
	output [2:0]S;
	wire [15:0]Q;
	wire [1:0]V;

	not not1(W[0], door);
	nand nand1(W[1], faucet, W[0], do);

	FreqDiv FD1(inpFreq, W[1], f);
	Counter C1(f, W[1], S);
	Dec D1(S, washingProgram, Q[7:0]);
	Dec D2(S, ~washingProgram, Q[15:8]);

	or or1(warm, Q[1], Q[2]);
	or or2(V[0], Q[3], Q[4]);
	or or3(V[1], Q[9], Q[10]);

	or or4(fill, Q[0], Q[8]);
	or or5(wash, V[0], V[1]);
	or or6(drain, Q[5], Q[11]);
	or or7(dry, Q[6], Q[12]);
endmodule