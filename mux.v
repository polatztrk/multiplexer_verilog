module mux(A,B,S,O);
   input A;
   input B;
   input S;

   output O;

   wire	  w1;
   wire	  w2;
   wire	  w3;
   
   not g4(w3,S);
   and g1(w1,A,w3);
   and g2(w2,B,S);
   or g3(O,w1,w2);

endmodule // mux

module largemux(i0,i1,i2,i3,s0,s1,O);
   input i0;
   input i1;
   input i2;
   input i3;
   input s0;
   input s1;

   output O;

   wire	  w4;
   wire	  w5;

   mux first_module_instance(.A(i0),.B(i1),.S(s0),.O(w4));

   mux second_module_instance(.A(i2),.B(i3),.S(s0),.O(w5));

   mux agg_module_instance(.A(w4),.B(w5),.S(s1),.O(O));

endmodule // largemux

   
   
   
