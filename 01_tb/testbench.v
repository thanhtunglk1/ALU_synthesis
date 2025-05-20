module alu_tb();
    // Parameter
    parameter N = 100; // Số lần random X

    // Signals
    reg clk;
    reg rst_n;
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] op;
    wire [3:0] result;
    wire carry;

    // DUT instance
    synth_wrapper alu_dut (
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .b(b),
        .op(op),
        .result(result),
        .carry(carry)
    );

   initial begin
      $shm_open("waves.shm"); 
      $shm_probe("AS");
   end

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test variables
    integer i, j;
    integer pass_count = 0;
    integer fail_count = 0;
    reg [3:0] expected_result;
    reg expected_carry;        // Biến để lưu giá trị carry mong đợi
    reg result_match;          // Biến kiểm tra result có khớp không
    reg carry_match;           // Biến kiểm tra carry có khớp không

    // Compare function
    function reg compare_output(input [3:0] expected, input [3:0] actual);
        compare_output = (expected == actual) ? 1 : 0;
    endfunction

    
    initial begin
        rst_n = 0;
        a = 0;
        b = 0;
        op = 0;
        #10;
        rst_n = 1;

        $display("\nStarting ALU operations testbench...\n");
        pass_count = 0;
        fail_count = 0;

        // Run N tests for each operation
        for (i = 0; i < 8; i = i + 1) begin
            op = i; // Chọn từng phép toán từ 3'b000 đến 3'b111
            for (j = 0; j < N; j = j + 1) begin
                
                a = $random % 16; // Random 4-bit input a (0 to 15)
                b = $random % 16; // Random 4-bit input b (0 to 15)

                #31; 

                // Kiểm tra ngõ ra
                case (op)
                    3'b000: begin // Addition
                        {expected_carry, expected_result} = {1'b0, a} + {1'b0, b};
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_ADD %b: %b + %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_ADD %b: %b + %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b001: begin // Subtraction
                        {expected_carry, expected_result} = {1'b0, a} - {1'b0, b};
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == ~expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_SUB %b: %b - %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_SUB %b: %b - %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b010: begin // AND
                        expected_result = a & b;
                        expected_carry = 0;
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_AND %b: %b & %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_AND %b: %b & %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b011: begin // OR
                        expected_result = a | b;
                        expected_carry = 0;
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_OR %b: %b | %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_OR %b: %b | %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b100: begin // XOR
                        expected_result = a ^ b;
                        expected_carry = 0;
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_XOR %b: %b ^ %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_XOR %b: %b ^ %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b101: begin // NOT
                        expected_result = ~a;
                        expected_carry = 0;
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_NOT %b: ~%b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_NOT %b: ~%b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b111: begin // Logical shift left
                        expected_result = a << b;
                        expected_carry = 0; // Cờ carry luôn là 0 cho SLL
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_SLL %b: %b << %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_SLL %b: %b << %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                    3'b110: begin // Logical shift right
                        expected_result = a >> b;
                        expected_carry = 0; // Cờ carry luôn là 0 cho SRL
                        result_match = compare_output(expected_result, result);
                        carry_match = (carry == expected_carry);
                        if (result_match && carry_match) begin
                            pass_count = pass_count + 1;
                            $display("OP_SRL %b: %b >> %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - PASS",
                                     op, a, b, expected_result, result, carry, expected_carry);
                        end else begin
                            fail_count = fail_count + 1;
                            $display("OP_SRL %b: %b >> %b = %b (ALU: %b, Carry: %b, Expected Carry: %b) - FAIL (Result: %s, Carry: %s)",
                                     op, a, b, expected_result, result, carry, expected_carry,
                                     result_match ? "OK" : "Mismatch", carry_match ? "OK" : "Mismatch");
                        end
                    end
                endcase
            end
        end

        // Display summary
        $display("\nTest Summary:");
        $display("Total test cases: %0d", pass_count + fail_count);
        $display("Passed: %0d", pass_count);
        $display("Failed: %0d", fail_count);
        $display("Pass rate: %0.2f%%\n", (pass_count * 100.0) / (pass_count + fail_count));

        #10 $finish;
    end

endmodule : alu_tb