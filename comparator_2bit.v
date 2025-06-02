module comparator_2bit(a_greater,equal,b_greater,a,b);
input[1:0]a,b;
output reg a_greater,equal,b_greater;
always @(*)
begin
 if(a>b) begin
  a_greater=1;
  equal=0;
  b_greater=0;
 end 
 else if(a==b)begin 
  equal=1;
  a_greater=0;
  b_greater=0;
 end
 else begin 
  equal=0;
  a_greater=0;
  b_greater=1;
 end 
end 
endmodule 