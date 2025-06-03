module johnson_counter (
    input clk,
    input reset,
    output reg [3:0] q
);
    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {~q[3], q[3:1]};  
    end
endmodule


// Let's say q = 4'b1100 (i.e., q[3] = 1, q[2] = 1, q[1] = 0, q[0] = 0)
// Now
// ~q[3] = ~1 = 0
// q[3:1] = 110  so on the next clock, q becomes 0110.
