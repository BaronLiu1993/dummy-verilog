// Simple Verilog module - 2-to-1 Multiplexer
module mux2to1 (
    input a,
    input b,
    input sel,
    output out
);
    assign out = sel ? b : a;
endmodule

// Testbench
module mux2to1_tb;
    reg a, b, sel;
    wire out;
    
    mux2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );
    
    initial begin
        // Test case 1: sel=0, should output a
        a = 1'b0; b = 1'b1; sel = 1'b0;
        #10;
        $display("Test 1: a=%b, b=%b, sel=%b, out=%b", a, b, sel, out);
        
        // Test case 2: sel=1, should output b
        a = 1'b0; b = 1'b1; sel = 1'b1;
        #10;
        $display("Test 2: a=%b, b=%b, sel=%b, out=%b", a, b, sel, out);
        
        // Test case 3: sel=0, different values
        a = 1'b1; b = 1'b0; sel = 1'b0;
        #10;
        $display("Test 3: a=%b, b=%b, sel=%b, out=%b", a, b, sel, out);
        
        $finish;
    end
endmodule
