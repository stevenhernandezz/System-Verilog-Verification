`timescale 1ps / 1ps

module associative_array_tb;
  
  //associative array
  byte assoc[byte];
  
  initial begin
  //array init
    byte i = 1;
    byte next_elem;
    
  do begin
    //power of 2 keys
    assoc[i] = i;
    $display("i = %d, Value = %d", i, assoc[i]);
    
    next_elem = i << 1;
    
    if(next_elem == 0) begin
      break;
    end else begin
      i = next_elem;
      end
      end while(next_elem != 0);
    
    //iterate through elem
    foreach(assoc[i]) begin
      assoc[i] = i;
      $display("i = %d, Value = %d", i, assoc[i]);
    end
    
    //traversal
    if (assoc.first(i)) do begin
      $display("using first next i =%0d, Value = %0d ", i, assoc[i]);   
    end while(assoc.next(i));
    
    //delete and size check
    if (assoc.first(i)) begin
      assoc.delete(i);
      $display("assoc.num() = %0d ", assoc.num());
    end
    
  end
endmodule