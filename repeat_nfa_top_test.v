module single_nfa_top_test;
  reg en, clk, reset_n;
  reg [7:0] payload;
  wire match;
  
  parameter STEP=1000;

  repeat_nfa_top repeat_nfa_top(en, payload, match,  clk, reset_n);
  

  always begin
    clk = 0; #(STEP/2) ;
    clk = 1; #(STEP/2) ;
  end

  initial begin
    $dumpfile("top_test.vcd");
    $dumpvars(0, repeat_nfa_top);
    $dumplimit(100000000);

          en = 1; reset_n = 1;
    #STEP payload = 8'd97;
    #STEP payload = 8'd98;
    #STEP payload = 8'd99;
    #STEP payload = 8'd97;
    #STEP payload = 8'd98;
    #STEP payload = 8'd99;
    #STEP payload = 8'd97;
    #STEP payload = 8'd98;
    #STEP payload = 8'd99;
    #STEP payload = 8'h0;
    #STEP $finish;
    end

  initial $monitor( $stime, " en=%b clk=%b reset_n=%b payload=%b match=%b ", en, clk, reset_n, payload, match);
  endmodule
