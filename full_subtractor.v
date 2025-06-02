module full_subtractor(d,bo,x,y,bin);
input x,y,bin;
output d,bo;
wire[2:0]w;
half_subtractor hs1(w[0],w[1],x,y);
half_subtractor hs2(d,w[2],w[0],bin);
or hs3(bo,w[2],w[1]);
endmodule