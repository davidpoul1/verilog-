// Code your testbench here
// or browse Examples
module tb_full_adder();
  wire sum, carry;
  reg a,b,c;
  full_adder obj(a,b,c,sum,carry);
  initial begin
    $dumpfile("obj.vcd");
    $dumpvars(1);
    a = 1; b = 1;c =1;#10;
    a = 0; b = 0;c = 0; #10;
  end
endmodule
//testbench 


//Another way to implement.
/*
module tb_full_adder();
  wire sum;
  reg a,b,c;
  full_adder obj(a,b,c,sum);
  initial begin 
    $dumpfile("obj.vcd");
    $dumpvars(1);
    a  = 0;b = 0;c = 0;#100;
    $finish;
  end
  always begin 
    #40;
    a = ~a;
  end
  
  always begin 
    #20;
    b = ~b;
  end
  
  always begin 
    #10;
    c = ~c;
  end
endmodule
*/
