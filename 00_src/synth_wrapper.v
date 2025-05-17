module synth_wrapper(
   input  wire       clk   , 
   input  wire       rst_n ,
   input  wire [3:0] a,
   input  wire [3:0] b,
   input  wire [2:0] op,
   output reg  [3:0] result,
   output reg        carry
);

   reg [3:0] a_reg, b_reg;
   reg [2:0] op_reg;
   reg [3:0] result_reg;
   reg       carry_reg;

   always@(posedge clk, negedge rst_n) begin
      if(!rst_n) begin
         a_reg  <= 4'b0;
         b_reg  <= 4'b0;
         op_reg <= 3'b0;
         result <= 4'b0;
         carry  <= 1'b0;
      end
      else begin
         a_reg  <= a;
         b_reg  <= b;
         op_reg <= op;
         result <= result_reg;
         carry  <= carry_reg;
      end
   end
 
   alu alu_design(
      .clk   (clk),
      .rst_n (rst_n),
      .a     (a_reg),
      .b     (b_reg),
      .op    (op_reg),
      .result(result_reg),
      .carry (carry_reg)    
   );

endmodule
