module add32 (a,b,out);
input [31:0] a,b;
output [31:0] out;
wire w1;
add16 a1(a[15:0],b[15:0],0,out[15:0],w1);
add16 a2(a[31:16],b[31:16],w1,out[31:16],cout);
endmodule