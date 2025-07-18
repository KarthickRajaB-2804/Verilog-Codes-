module moore_machine (
    input clk,
    input reset,
    input j,
    input k,
    output reg out
);
    parameter OFF = 1'b0;
    parameter ON  = 1'b1;

    reg current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= OFF;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            OFF: begin
                if (j)
                    next_state = ON;
                else
                    next_state = OFF;
            end

            ON: begin
                if (k)
                    next_state = OFF;
                else
                    next_state = ON;
            end

            default: next_state = OFF;
        endcase
    end

    
    always @(*) begin
        case (current_state)
            OFF: out = 0;
            ON:  out = 1;
            default: out = 0;
        endcase
    end

endmodule

