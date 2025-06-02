module ripple_carry(s,cy,a,b,c);
input [3:0]a,b;
input c;
output[3:0]s;
output cy;
wire [2:0]t;
full_adder f1(s[0],t[0],a[0],b[0],c);
full_adder f2(s[1],t[1],a[1],b[1],t[0]);
full_adder f3(s[2],t[2],a[2],b[2],t[1]);
full_adder f4(s[3],cy,a[3],b[3],t[2]);
endmodule