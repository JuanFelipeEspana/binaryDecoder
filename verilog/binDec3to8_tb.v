`timescale 1 ns/ 10 ps
module binDec3to8_tb();
   reg[2:0] in_tb;
   wire[7:0]     bcode;

   binDec3to8 DUT (.in(in_tb),.bcode(bcode_tb));

   initial
     begin
	in_tb = 3'b000;
	# 200;
	in_tb = 3'b001;
	# 200;
	in_tb = 3'b010;
	# 200;
	in_tb = 3'b011;
	# 200;
	in_tb = 3'b100;
	# 200;
	in_tb = 3'b101;
	# 200;
	in_tb = 3'b110;
	# 200;
	in_tb = 3'b111;
	# 200;
	$stop;
     end // initial begin
endmodule
	
   
  
