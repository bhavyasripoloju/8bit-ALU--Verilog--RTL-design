`timescale 1ns/1ps

module andgate_tb;
    reg a, b;
    wire y;

    andgate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("andgate.vcd");
        $dumpvars(0, andgate_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $display("Simulation finished successfully!");
        $finish;
    end
endmodule
