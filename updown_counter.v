module updown_counter(y,clk,rst,a);
input a,clk,rst;
output reg[2:0]y;
always @(posedge clk or posedge rst)
begin 
 if(rst==1'b0)begin
  y=3'b000;
 end                                     // for updown counter,
 else if(a==1'b1)begin                   // if a=1 then it is up counter(0 to 7)
  y=y+1'b1;                              // if a=0 then it is down counter(7 to 0)
 end 
 else begin
  y=y-1'b1;
 end 
end 
endmodule 

  