module T_FF(T, clk, reset, Q);
input clk, reset ,T;
output reg Q;
always @(posedge clk or reset)
begin
	if (reset)
		Q <= 0;
	else if(T)
		Q <= ~Q;
end
endmodule