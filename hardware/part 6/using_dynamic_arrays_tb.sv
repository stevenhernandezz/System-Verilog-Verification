`timescale 1ps / 1ps

module using_dynamic_arrays_tb;
  
  //2D array
  int arr_dyn1[];
  int arr_dyn2[];
  
  initial begin
    //allocate mem
    arr_dyn1 = new[20];
   // arr_dyn2 = new[10];
    //init
    foreach(arr_dyn1[i])begin
      arr_dyn1[i] = i;
    end
    
    //copying into arr_dyn2
    arr_dyn2 = new[arr_dyn1.size()];
    foreach(arr_dyn1[i]) begin
       arr_dyn2[i] = arr_dyn1[i];
  end
    
    //displaying the new elements of arr_dyn2
    arr_dyn2 = new[10];
    foreach(arr_dyn2[i])begin
      arr_dyn2[i] = i;
    end
    
    //modifying 1 element
    arr_dyn2[0] = 9;
    
    //deleting allocated mem
    //arr_dyn1.delete();
    arr_dyn2.delete();
    
    //displaying 
    $display("arr_dyn1: %p ", arr_dyn1);    
    $display("arr_dyn2: %p ", arr_dyn2);
    $display("arr_dyn2: %p ", arr_dyn1.size());
  end
endmodule