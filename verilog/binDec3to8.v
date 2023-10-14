module binDec3to8
  (
   input wire[2:0] in,
   output wire[7:0] bcode
   );

   binDec2to4 MSB (.en(in[2]),.in(in[1:0]),.bcode(bcode[7:4]));
   binDec2to4 LSB (.en(~in[2]),.in(in[1:0]),.bcode(bcode[3:0]));
endmodule
