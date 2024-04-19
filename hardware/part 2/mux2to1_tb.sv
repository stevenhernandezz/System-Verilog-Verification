`timescale 1ns / 1ps

module mux2to1_tb;
  logic in0, in1, sel, out;
  
  mux2to1 mux(.in0(in0), .in1(in1), .sel(sel), .out(out));
  
  initial begin
    //sim waveform
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);
    
    #10;
    sel = 1'b1;
    in0 = 1'b0;
    in1 = 1'b1;
    #1;
    assert(out == in1)
    else 
      $error("Test failed expecting in1");
      
    #10;
    sel = 1'b1;
    in0 = 1'b1;
    in1 = 1'b0;
    #1;
    assert(out == in1)
    else 
      $error("Test failed expecting in0");
    
    #10;
    sel = 1'b0;
    in0 = 1'b1;
    in1 = 1'b1;
    #1;
   assert(out == in1)
    else 
      $error("Test failed expecting in0");
    
  end 

endmodule