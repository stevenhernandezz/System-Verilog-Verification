`timescale 1ps / 1ps

module print_multi_dim_array_tb;
  
  //2D array
  byte array_2d[4][6];
  
  initial begin
    //initializing
    foreach (array_2d[i,j]) begin
      array_2d[i][j] = i + j;
    end
    //displaying
    foreach (array_2d[i,j]) begin
      $write("%0d ", array_2d[i][j]);
      if((j+1) % 2 == 0)
        $write("\n");
    end
    $display("");
  end
endmodule