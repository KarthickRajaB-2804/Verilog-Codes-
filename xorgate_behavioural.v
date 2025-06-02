// using behavioural model 
module xorgate_behavioural(y,a,b);
input a,b;
output reg y;
always @ (a,b)
begin 
 if(a==1'b0 && b==1'b0) begin
    y=1'b0;
 end
 else if(a==1'b0 && b==1'b1) begin
    y=1'b1;
 end
 else if(a==1'b1 && b==1'b0) begin
    y=1'b1;
 end
 else begin
    y=1'b0;
 end
end 
endmodule