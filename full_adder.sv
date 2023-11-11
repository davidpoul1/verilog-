// data flow.
module full_adder(a,b,ci,sum, carry);
  input a,b,ci;
  output sum , carry;
   assign sum = a ^ b^ci;
  assign carry = (a & b) | (b & c) | (c & a);
endmodule


//structural flow 
// Code your design here
module full_adder(a,b,c,sum, carry);
  input a,b,c;
  output sum, carry;
  wire w1, w2,w3,w4;
  xor x1(w1 , a,b);
  xor x2(sum , w1, c);
  
  or or1(w2,b,c);
  and and1(w3, b,c);
  and and2(w4,w2,a);
  or or2(carry , w4, w3);
endmodule
