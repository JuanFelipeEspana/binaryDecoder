module binDec4to16
  (
   input wire[3:0] in,
   output wire[15:0] bcode
   );
   wire [3:0] 	     en;

   assign en[0] <= (~in[1])&(~in[0]);
   assign en[1] <= (~in[1])&(in[0]);
   assign en[2] <= (in[1])&(~in[0]);
   assign en[3] <= (in[1])&(in[0]);

   binDec2to4 hexa3 (.en(en[3]),.in(in[1:0]),.bcode(bcode[15:12]));
   binDec2to4 hexa2 (.en(en[2]),.in(in[1:0]),.bcode(bcode[11:8]));
   binDec2to4 hexa1 (.en(en[1]),.in(in[1:0]),.bcode(bcode[7:4]));
   binDec2to4 hexa0 (.en(en[0]),.in(in[1:0]),.bcode(bcode[3:0]));
endmodule
   
   
