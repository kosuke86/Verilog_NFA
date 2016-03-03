module repeat_nfa_block0(
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
wire match1;

assign match = match1;
repeat_nfa_branch1 repeat_nfa_branch1(.en (en),
				.payload (payload),
				.clk (clk),
				.reset_n (reset_n),
				.match (match0)
);

repeat_nfa_branch2 repeat_nfa_branch2(.en (match0),
				.payload (payload),
				.clk (clk),
				.reset_n (reset_n),
				.match (match1)
);

endmodule
//--------------------------------------------------------------

module repeat_nfa_block1(
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
wire match1;

assign match = match1;
repeat_nfa_block0 repeat_nfa_block0(.en (en),
				.payload (payload),
				.clk (clk),
				.reset_n (reset_n),
				.match (match0)
);

repeat_nfa_branch3 repeat_nfa_branch3(.en (match0),
				.payload (payload),
				.clk (clk),
				.reset_n (reset_n),
				.match (match1)
);

endmodule
//--------------------------------------------------------------




//----------NFA TOP------------

module repeat_nfa_top(
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

repeat_nfa_block1 repeat_nfa_block1(.en (en),
				.payload (payload),
				.clk (clk),
				.reset_n (reset_n),
				.match (match)
);

endmodule
//--------------------------------------------------------------
