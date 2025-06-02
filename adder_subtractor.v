module adder_subtractor(s,co,a,b,c,k);
input[3:0]a,b;
input c,k;
output[3:0]s;
output co;
wire[6:0]w;
xor x1(w[0],b[0],k);
xor x2(w[1],b[1],k);
xor x3(w[2],b[2],k);
xor x4(w[3],b[3],k);
full_adder f1(s[0],w[4],a[0],w[0],k);
full_adder f2(s[1],w[5],a[1],w[1],w[4]);
full_adder f3(s[2],w[6],a[2],w[2],w[5]);
full_adder f4(s[3],co,a[3],w[3],w[6]);
endmodule