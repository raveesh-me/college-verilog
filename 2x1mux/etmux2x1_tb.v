// 2X1 MUX TestBench
`timescale 1s/100ms
`include "etmux2x1.v"

module TwoOneMux_tb();
reg a, b, sel, clk;
wire out;

etMux ietMux(a, b, sel, clk, out);
initial
begin
  $monitor("a=%b, b=%b, sell=%b, clk=%b, out=%b", a, b, sel, clk, out);
  $dumpfile("EdgeTriggeredMux.vcd");
  $dumpvars(0, TwoOneMux_tb);
  a = 0; b = 0; sel = 0; #10;
  a = 0; b = 1; sel = 0; #10;
  a = 1; b = 0; sel = 0; #10;
  a = 1; b = 1; sel = 0; #10;
  a = 0; b = 0; sel = 1; #10;
  a = 0; b = 1; sel = 1; #10;
  a = 1; b = 0; sel = 1; #10;
  a = 1; b = 1; sel = 1; #10;
  $finish;
end
initial
begin
  clk = 0;
end
always begin
#5; clk = ~clk;
end
endmodule