module ex03_as_tb();

 reg d, clk, clk_f, rst, q;
 
 ex03_as iDUT(.d(d), .q(q), .clk(clk), .rst(rst));

 initial begin
   clk = 0;
   clk_f = 0;
   d = 0;
   rst = 1; 
   #100 $stop();
 end

// always begin
//   @(posedge clk_f);
//   rst = 1;
//   @(posedge clk_f);
//   rst = 0;
// end

 always begin
   @(posedge clk);
   d = 1;
   @(posedge clk);
   d = 0;
 end

 always
  #5 clk = ~clk;

 always
  #2 clk_f = ~clk_f;
endmodule