// data flow.
module full_adder(a,b,ci,sum, carry);
  input a,b,ci;
  output sum , carry;
   assign sum = a ^ b^ci;
  assign carry = (a & b) | (b & c) | (c & a);
endmodule


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
