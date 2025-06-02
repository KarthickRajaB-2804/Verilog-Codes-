module half_subtractor(d,b,x,y);
input x,y;
output d,b;
assign d=x^y;
assign b=~(x)&(y);
endmodule