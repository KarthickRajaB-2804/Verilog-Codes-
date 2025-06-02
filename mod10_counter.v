module mod10_counter(clk,rst,count);
input clk,rst;
output reg[3:0]count;
always @(posedge clk)
begin
if(rst)
 count<=3'b0000;
else if (count==9)
 count<=3'b0000;
else
 count<= count + 1'b1;
end 
endmodule
