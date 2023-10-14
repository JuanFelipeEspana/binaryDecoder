`timescale 1 ns/ 10 ps
module binDec2to4_tb();
   reg en_tb;
   reg[1:0] in_tb;
   wire[3:0] bcode;

   binDec2to4 DUT (.en(en_tb),.in(in_tb),.bcode(bcode_tb));

   initial
     begin
	in_tb = 2'b00;
	# 200;
	in_tb = 2'b01;
	# 200;
	in_tb = 2'b10;
	# 200;
	in_tb = 2'b11;
	# 200;

	$stop;
     end // initial begin
endmodule
	
   
  
