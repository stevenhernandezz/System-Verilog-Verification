`timescale 1ps / 1ps

module fixed_array_tb;
  parameter ARR_SIZE = 5;
  //array declaration
  integer arr_x[4];
  integer arr_y[5];
  
  //2D array
  bit [31:0] src0[0:ARR_SIZE-1];
  bit [31:0] dst0[0:ARR_SIZE-1];
  
  bit [31:0] src1[ARR_SIZE-1:0];
  bit [31:0] dst1[ARR_SIZE-1:0];
  
  initial begin
    // Initializing arr_x and arr_y with specific values
    arr_x = '{10, 20, 30, 40};
    arr_y = '{5, 15, 25, 35, 45};
    src0 = '{1, 2, 3, 4, 5};
    dst0 = '{5, 4, 3, 2, 1};
    src1 = '{10, 9, 8, 7, 6};
    dst1 =  '{6, 7, 8, 9, 10};
    //displaying arrx and arry
  foreach (arr_x[idx]) begin
    $display("arr_x contains = [%0d]", idx, arr_x[idx]);
             end
             
  foreach (arr_y[idx]) begin
    $display("arr_y contains = [%0d]", idx, arr_y[idx]);
   end
 end
             
  initial begin
    //2D array displaying
    for(int i= 0; i<ARR_SIZE; i++)begin
      $display("src0[%0d] = %0d, src1[%0d] = %0d, dst0[%0d] = %0d, dst1[%0d] = %0d", i, src0[i], i, src1[i], i, dst0[i], i, dst1[i]);
  end
  end
endmodule