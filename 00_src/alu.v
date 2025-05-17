module alu(
    input  wire       clk   ,
    input  wire       rst_n ,
    input  wire [3:0] a     ,
    input  wire [3:0] b     ,
    input  wire [2:0] op    ,
    output reg  [3:0] result,
    output reg        carry     
);

    wire [3:0] sum, b_value;
    wire       c;
    reg        p_carry;
    reg [3:0]  p_result;
    wire [3:0] and_2, or_3, xor_4, not_5, sright_6, sleft_7;

    assign b_value = b ^ {op[0], op[0], op[0], op[0]}; 
    assign and_2   = a & b;
    assign or_3    = a | b;
    assign xor_4   = a ^ b;
    assign not_5   = ~a;

    always @(*) begin
        case(op)
            3'b000 : p_result = sum     ;
            3'b001 : p_result = sum     ;
            3'b010 : p_result = and_2   ;
            3'b011 : p_result = or_3    ;
            3'b100 : p_result = xor_4   ;
            3'b101 : p_result = not_5   ; 
            3'b110 : p_result = sright_6;
            3'b111 : p_result = sleft_7 ;
            default: p_result = 4'b0000 ;
        endcase

        p_carry = (op[2] | op[1]) ? 1'b0 : c;
    end

    always @(posedge clk, negedge rst_n) begin
        if (~rst_n) begin
            result <= 4'b0000;
            carry  <= 1'b0;
        end
         
        else begin
            result <= p_result;
            carry  <= p_carry;
        end
    end

cla_4bit adder_4bit(
    .a(a),
    .b(b_value),
    .cin(op[0]),
    .s(sum),
    .cout(c)
);

shift_right shift_right_4bit(
    .a(a),
    .b(b),
    .result(sright_6)
);

shift_left shift_left_4bit(
    .a(a),
    .b(b),
    .result(sleft_7)
);

endmodule