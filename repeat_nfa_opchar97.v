module repeat_nfa_opchar_97(
en,
payload,
match,
clk,
reset_n
);

input en;
input clk;
input reset_n;
input [7:0] payload;
output match;

reg match;

always @(posedge(clk))
begin
	if (!reset_n)
		match <= 0;
	else
	begin
		if(payload == 8'd97 && en == 1)
			match <= 1;
		else
			match <= 0;
	end
end
endmodule

//--------------------------------------------------------------
