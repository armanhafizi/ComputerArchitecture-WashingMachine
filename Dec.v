module Dec( S, reset, Q);

	input [2:0]S;
	input reset;
	output reg [7:0]Q;

	always @(S or reset)
	begin
		if (reset)
			Q <= 8'b00000000;
		else if(S == 3'b000)
			Q <= 8'b00000001;
		else if(S == 3'b001)
			Q <= 8'b00000010;
		else if(S == 3'b010)
			Q <= 8'b00000100;
		else if(S == 3'b011)
			Q <= 8'b00001000;
		else if(S == 3'b100)
			Q <= 8'b00010000;
		else if(S == 3'b101)
			Q <= 8'b00100000;
		else if(S == 3'b110)
			Q <= 8'b01000000;
		else if(S == 3'b111)
			Q <= 8'b10000000;
	end
endmodule