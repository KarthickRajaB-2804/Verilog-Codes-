module mod6_counter(clk,rst,count);
input clk,rst;
output reg[2:0] count;
always @(posedge clk)
begin
if (rst)
 count <= 3'b000;
else if(count==5)
 count<=3'b000;
else
 count <= count + 1'b1; 
end
endmodule