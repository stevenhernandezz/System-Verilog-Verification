module logic_data_type(input logic rst_h);
  parameter CYCLE = 20;
 
  //signals
  logic q, q1, d, clk, rst_1;
  
  
  //clock 
  initial begin
    clk = 0;
    forever #(CYCLE/2) clk = ~clk;
  end 
  
  //reset
  assign rst_1 = ~rst_h; 
  
  assign q1 = ~q;
  //not not_gate(q1, q);

  //instant
  my_dff d1 (.q(q), .d(d), .clk(clk), .rst_l(rst_l));

endmodule