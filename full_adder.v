module full_adder(s,co,a,b,c);
input a,b,c;
output s,co;
wire t1,t2,t3;
half_adder h1(t1,t2,a,b);
half_adder h2(s,t3,c,t1);
or h3(co,t3,t2);
endmodule 
