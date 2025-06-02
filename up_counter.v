module up_counter(y,clk,rst);
input clk,rst;
output reg[2:0]y;
always @(posedge clk or posedge rst)
begin 
 if(rst==1'b0) begin
  y<=3'b000;
 end 
 else begin 
  y<=y+1'b1;
 end 
end 
endmodule