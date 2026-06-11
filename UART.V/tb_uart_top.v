`timescale 1ns / 1ps

module tb_uart_top;
    reg clk;
    reg rst;
    reg wr_enb;
    reg [7:0] tx_data_in;
    wire tx_serial_line;
    wire tx_busy;
    wire rx_data_rdy;
    wire [7:0] rx_data_out;

    uart_top uut (
        .clk(clk),
        .rst(rst),
        .wr_enb(wr_enb),
        .tx_data_in(tx_data_in),
        .tx_serial_line(tx_serial_line),
        .tx_busy(tx_busy),
        .rx_data_rdy(rx_data_rdy),
        .rx_data_out(rx_data_out)
    );

    reg [7:0] test_data [0:3];
    integer i;

    initial begin
        $dumpfile("UARTcode_tb.vcd");
        $dumpvars(0, tb_uart_top);

        clk = 1'b0;
        rst = 1'b1;
        wr_enb = 1'b0;
        tx_data_in = 8'h00;

        #100;
        rst = 1'b0;
        #100;

        test_data[0] = 8'h55;
        test_data[1] = 8'hA5;
        test_data[2] = 8'hC3;
        test_data[3] = 8'h7E;

        for (i = 0; i < 4; i = i + 1) begin
            send_byte(test_data[i]);
            wait(rx_data_rdy);
            $display("%0t: Received byte %0d = 0x%02X", $time, i, rx_data_out);
            #100;
        end

        $display("UART loopback test complete");
        #1000;
        $finish;
    end

    always #10 clk = ~clk; // 50 MHz clock

    task send_byte(input [7:0] byte);
    begin
        wait(~tx_busy);
        @(posedge clk);
        tx_data_in = byte;
        wr_enb = 1'b1;
        @(posedge clk);
        wr_enb = 1'b0;
        wait(~tx_busy);
    end
    endtask

    always @(posedge clk) begin
        if (rx_data_rdy) begin
            $display("%0t: rx_data_rdy asserted, rx_data_out = 0x%02X", $time, rx_data_out);
        end
    end

endmodule
