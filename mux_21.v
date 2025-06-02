module mux_21(a,b,y,s);
input a,s,b;
output reg y;
always @(*)
begin
 case(s)
   1'b0: y=a;
   1'b1: y=b;
   default: y=0;
 endcase
 end 
endmodule