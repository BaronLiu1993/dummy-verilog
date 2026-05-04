// Simple Verilog module - 1-bit Full Adder
module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule

// Testbench
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;
    
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        // Test case 1: 0+0+0 = 0, carry=0
        a = 1'b0; b = 1'b0; cin = 1'b0;
        #10;
        $display("Test 1: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);
        
        // Test case 2: 1+1+0 = 0, carry=1
        a = 1'b1; b = 1'b1; cin = 1'b0;
        #10;
        $display("Test 2: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

        $finish;
    end
endmodule
