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
