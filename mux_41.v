module mux_41(y,a,b,c,d,s1,s2);
input a,b,c,d,s1,s2;
output reg y;
always @(*)
begin 
 if(s1==1'b0 && s2==1'b0) begin
    y=a;
 end
 else if(s1==1'b0 && s2==1'b1) begin
    y=b;
 end
 else if(s1==1'b1 && s2==1'b0) begin
    y=c;
 end 
 else begin 
    y=d;
 end 
end 
endmodule 

// using case keyword
//module mux_41(y,a,b,c,d,s1,s2);
//input a,b,c,d,s1,s2;
//output reg y;
//always @(*)
//begin 
// case({s0,s1})     concatenating the select lines 
//  2'b00: y=a;
//  2'b01: y=b;
//  2'b10: y=c;
//  2'b11: y=d;
//  default:y=0;
// endcase 
//end
//endmodule


