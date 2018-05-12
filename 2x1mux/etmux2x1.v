//Level Triggered 2X1 MUX Model
module etMux(
    input a,
    input b,
    input sel,
    input clk,
    output out
);
    reg out;
    always @(posedge clk)
    begin
      if (sel)
        out = a;       
      else
        out = b;
    end
endmodule