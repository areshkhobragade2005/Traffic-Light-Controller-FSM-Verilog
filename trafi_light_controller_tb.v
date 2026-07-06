`timescale 1ns/1ps

module traffic_light_controller_tb;

reg clk;
reg reset;

wire [2:0] light;

traffic_light_controller uut(
    .clk(clk),
    .reset(reset),
    .light(light)
);

always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;

    #20;

    reset = 0;

    #300;

    $finish;

end

endmodule
