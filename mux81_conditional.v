module mux81_conditional(y,a,sel);
input [7:0]a;
input [2:0]sel;
output y;

// Truth Table
//000: y=a[0];
//001: y=a[1];
//010: y=a[2];
//011: y=a[3];
//100: y=a[4];
//101: y=a[5];
//110: y=a[6];
//111: y=a[7];

assign y=sel[2]?(sel[1]?(sel[0]? a[7]:a[6]):(sel[0]? a[5]:a[4])):(sel[1]?(sel[0]?a[3]:a[2]):(sel[0]? a[1]:a[0]));
endmodule