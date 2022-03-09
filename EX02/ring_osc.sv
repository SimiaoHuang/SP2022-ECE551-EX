module ring_osc(EN, OUT);
 input EN;
 output OUT;
 logic n1, n2;

 nand #5 i0(n1, EN, OUT);
 not #5 i1(n2, n1);
 not #5 i2(OUT, n2);

endmodule
