module tb_8bitalu;
reg [7:0] a,b;
reg [2:0] sel;
wire [7:0] y;
 bitalu8 uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
 );
 initial begin
    $dumpfile("8bitalu.vcd");
    $dumpvars(0,tb_8bitalu);
     a=8'd10; b=8'd5; sel=3'b000;
     #10;
     sel= 3'b001;
     #10;
     sel=3'b010;
     #10;
     sel=3'b011;
     #10;
     sel=3'b100;
     #10;
     sel=3'b101;
     #10;
     sel=3'b110;
     #10;
     sel=3'b111;
     #10;
     a=8'd255;b=8'd1; sel=3'b000;
     #10;
     a=8'd15;b=8'd3; sel=3'b001;
     #10;
     $finish ;
 end
endmodule