module mux_81(y,a,s);
input[7:0]a;
input[2:0]s;
output reg y;
always @(*)
begin
 case({s[0],s[1],s[2]})
  3'b000: y=a[0];
  3'b001: y=a[1];
  3'b010: y=a[2];
  3'b011: y=a[3];
  3'b100: y=a[4];
  3'b101: y=a[5];
  3'b110: y=a[6];
  3'b111: y=a[7];
  default:y=0;
 endcase 
end 
endmodule
  