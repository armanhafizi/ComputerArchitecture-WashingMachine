module FreqDiv(inpClk, reset, S);

	input inpClk;
	input reset;
	output S;
	
	wire [3:0]B;
	wire [7:0]W;
	T_FF tff1(1'b1, inpClk, reset, B[0]);
	T_FF tff2(W[0], inpClk, reset, B[1]);
	T_FF tff3(W[1], inpClk, reset, B[2]);
	T_FF tff4(W[4], inpClk, reset, B[3]);

	and and1(W[0], B[0], W[5]);
	and and2(W[1], B[1], B[0]);
	and and3(W[2], B[2], W[1]);
	and and4(W[3], B[0], B[3]);
	or or1(W[4], W[3], W[2]);
	not not1(W[5], B[3]);

	and and5(W[6], B[0], B[2]);
	and and6(W[7], B[1], B[2]);
	or or2(S, W[6], W[7], B[3]);

endmodule