`timescale 1ns/1ns
`include "mux.v"

module mux_tb;
   reg i0;
   reg i1;
   reg i2;
   reg i3;
   reg s0;
   reg s1;
   
   wire	O;
   

   largemux uut(i0,i1,i2,i3,s0,s1,O) ;

   initial begin

      $dumpfile("mux_tb.vcd");
      $dumpvars(0,mux_tb);

      i0=1;
      i1=0;
      i2=1;
      i3=1;
      s0=1;
      s1=0;
      
      #10;
      i0=1;
      i1=0;
      i2=1;
      i3=1;
      s0=1;
      s1=0;
      
      #10;
      i0=1;
      i1=0;
      i2=1;
      i3=1;
      s0=0;
      s1=0;
      
      #10;
      i0=1;
      i1=0;
      i2=1;
      i3=1;
      s0=0;
      s1=1;
      
      #10;
      i0=1;
      i1=0;
      i2=1;
      i3=1;
      s0=1;
      s1=1;
      
      #10;
      $display("Test complete");

   end // initial begin

endmodule // fourbitadder_tb







