// data flow.
module full_adder(a,b,ci,sum, carry);
  input a,b,ci;
  output sum , carry;
   assign sum = a ^ b^ci;
  assign carry = (a & b) | (b & c) | (c & a);
endmodule


