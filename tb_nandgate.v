module nandgate_tb;
    reg a, b;
    wire y;

    nandgate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("nandgate.vcd");
        $dumpvars(0, nandgate_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $display("Simulation finished successfully!");
        $finish;
    end
endmodule
