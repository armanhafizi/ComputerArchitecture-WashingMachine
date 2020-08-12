module JK_FF(J, K, clk, Q, Qn);

	input J, K, clk;
	output Q, Qn;

	wire  [2:0]W;

	nand(W[0], clk, K, Q);
	nand(W[1], clk, J, Qn);
	nand(Q, W[1], Qn);
	nand(Qn, W[0], Q); 

endmodule