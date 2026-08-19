`timescale 1ns/1ps

module half_wave_tb;

reg clk;
reg signed [7:0] ac_input;
wire signed [7:0] dc_output;


half_wave_rectifier DUT(
    .clk(clk),
    .ac_input(ac_input),
    .dc_output(dc_output)
);


always #5 clk = ~clk;


initial begin

clk = 0;

$monitor("Time=%0t Input=%d Output=%d",
          $time, ac_input, dc_output);


ac_input = 8'd50;
#10;

ac_input = 8'd100;
#10;

ac_input = -8'd50;
#10;

ac_input = -8'd100;
#10;

ac_input = 8'd80;
#10;


$finish;

end

endmodule