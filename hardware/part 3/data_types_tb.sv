`timescale 1ps / 1ps

module data_types_tb;
  //data types
  //2-state
  bit b;
  bit [31:0] b32;
  int unsigned ui;
  int i; 
  byte b8;
  shortint s;
  //4-state
  longint li;
  time t_initial;
  real r;
  
  int sum;
  real product;
  
  initial begin
    b = 1'b0;
    b32 = 32'd10;
    ui = 32'd5;
    i = -10; 
    b8 = 8'd2;
    s = -2;
    li = 64'd15;
    r = 3.14;
    
    // Displaying initial values
    $display("Initial values:");
    $display("b = %b", b);
    $display("b32 = %d", b32);
    $display("ui = %d", ui);
    $display("i = %d", i);
    $display("b8 = %d", b8);
    $display("s = %d", s);
    $display("li = %d", li);
    $display("r = %f", r);
    
    //negation
    b = ~b;
    
    assert(b == 1'b1)
    else 
      $error("Negation Test Failed");
	$display("b = %b", b);
	    
    //addition
     sum = i + s;
    
    assert(sum == -12)
    else 
      $error("Addition Test Failed");
        $display("sum = %d", sum);

    
    //multiplication
     product = r * b8;
    
    assert(product == 6.28)
    else 
      $error("Multiplication Test Failed");
    $display("product = %f", product);
    
    
  end 
endmodule