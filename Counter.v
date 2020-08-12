module Counter( clk, reset, Q);

	input clk, reset;
	output [2:0]Q;

	T_FF tff1(1'b1, clk, reset, Q[1]);
	T_FF tff2(1'b1, ~Q[1], reset, Q[2]);

	not not1( Q[0], clk);
		
endmodule