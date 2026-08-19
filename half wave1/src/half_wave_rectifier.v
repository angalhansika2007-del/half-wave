module half_wave_rectifier(
    input wire clk,
    input wire signed [7:0] ac_input,
    output reg signed [7:0] dc_output
);

always @(posedge clk)
begin
    if(ac_input > 0)
        dc_output <= ac_input;
    else
        dc_output <= 0;
end

endmodule