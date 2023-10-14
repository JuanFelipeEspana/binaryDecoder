`timescale 1 ns/ 10 ps
module binDec4to16_tb();
   reg[3:0] in_tb;
   wire[15:0]     bcode;

   binDec4to16 DUT (.in(in_tb),.bcode(bcode_tb));

   initial
     begin
	in_tb = 4'b0000;
	# 200;
	in_tb = 4'b0001;
	# 200;
	in_tb = 4'b0010;
	# 200;
	in_tb = 4'b0011;
	# 200;
	in_tb = 4'b0100;
	# 200;
	in_tb = 4'b0101;
	# 200;
	in_tb = 4'b0110;
	# 200;
	in_tb = 4'b0111;
	# 200;
	in_tb = 4'b1000;
	# 200;
	in_tb = 4'b1001;
	# 200;
	in_tb = 4'b1010;
	# 200;
	in_tb = 4'b1011;
	# 200;
	in_tb = 4'b1100;
	# 200;
	in_tb = 4'b1101;
	# 200;
	in_tb = 4'b1110;
	# 200;
	in_tb = 4'b1111;
	# 200;
	$stop;
     end // initial begin
endmodule
	
   
  
