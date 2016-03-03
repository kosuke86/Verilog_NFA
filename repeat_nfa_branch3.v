module repeat_nfa_branch3 (
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

wire match0;

repeat_nfa_opchar_97 repeat_nfa_element_opchar0(.en (en),
						.payload (payload),
						.clk (clk),
						.reset_n (reset_n),
						.match (match0)
);

wire match1;

repeat_nfa_opchar_98 repeat_nfa_element_opchar1(.en (match0),
						.payload (payload),
						.clk (clk),
						.reset_n (reset_n),
						.match (match1)
);

wire match2;

repeat_nfa_opchar_99 repeat_nfa_element_opchar2(.en (match1),
						.payload (payload),
						.clk (clk),
						.reset_n (reset_n),
						.match (match2)
);
assign match = match2;
endmodule
//--------------------------------------------------------------
