// 2X1 MUX TestBench
`timescale 1s/100ms
`include "mux2x1.v"

module TwoOneMux_tb();
reg a, b, sel;
wire out;

TwoOneMux iTwoOneMux(a, b, sel, out);
initial
begin
  $monitor("a=%b, b=%b, sell=%b, out=%b", a, b, sel, out);
  $dumpfile("LevelTriggeredMux.vcd");
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
endmodule