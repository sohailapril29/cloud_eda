`timescale 1ns/1ps

module tb_ha;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the Half Adder (assume module name is ha)
    ha uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("tb_ha.vcd");
        $dumpvars(0, tb_ha);

        // Display header
        $display("Time\t a b | sum carry");

        // Monitor changes
        $monitor("%g\t %b %b |  %b    %b", $time, a, b, sum, carry);

        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule

// Example half adder module for completeness
module ha(
    input a,
    input b,
    output sum,
    output carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule