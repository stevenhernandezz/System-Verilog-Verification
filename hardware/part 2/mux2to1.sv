//mux
module mux2to1(
    input logic in0, 
    input logic in1, 
    input logic sel, 
    output logic out
);

  always_comb begin
    assign out = sel ? in1: in0;
  end 
  
  
endmodule 