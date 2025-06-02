module demux_14(y,s,a);
input [1:0]s;
input a;
output reg[3:0]y;
always @(*)
begin
 case(s)
  default: y=0;
  2'b00: y[0]=a;
  2'b01: y[1]=a;
  2'b10: y[2]=a;
  2'b11: y[3]=a;
  endcase 
end 
endmodule
