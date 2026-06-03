module tb_xorgate;
reg a,b;
wire y;
xorgate uut(
    .a(a),
    .b(b),
    .y(y)
); 
initial begin
    $dumpfile("xorgate.vcd");
    $dumpvars(0, tb_xorgate);
    $display("a b | y");
    $monitor("%b %b | %b", a, b, y);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end
endmodule