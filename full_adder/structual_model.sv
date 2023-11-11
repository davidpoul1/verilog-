//fuller adder.
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


//full adder using half adders.
// Code your design here
module full_adder(a,b,c,sum, carry);
  input a,b,c;
  output sum, carry;
  wire w1,c1,c2;
  
  half_Adder obj1(a,b,w1,c1);
  half_Adder obj2(w1,c,sum,c2);
  or or1(carry,c1,c2);
  
endmodule

module half_Adder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  xor x1(sum,a,b);
  and a1(carry,a,b);
endmodule
