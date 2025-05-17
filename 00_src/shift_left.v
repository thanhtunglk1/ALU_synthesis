module shift_left(
    input  wire [3:0] a,
    input  wire [3:0] b,
    output reg  [3:0] result
);
    
    reg [3:0] temp_0, temp_1;

    always @(*) begin
        temp_0 = b[0]    ? {a[2:0]     , 1'b0} : a     ;
        temp_1 = b[1]    ? {temp_0[1:0], 2'b0} : temp_0;
        result = |b[3:2] ? 4'b0                : temp_1;
    end

endmodule