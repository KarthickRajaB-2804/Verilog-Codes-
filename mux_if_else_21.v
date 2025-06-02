module mux_if_else_21(y,a,b,s);
input a,s,b;
output reg y;
always @(*)
begin
 if(s==1'b0)begin
   y=a;
 end
 else begin
   y=b;
 end
end 
endmodule