//Level Triggered 2X1 MUX Model
module TwoOneMux(
    input a,
    input b,
    input sel,
    output out
);
    reg out;
    always @(a or b or sel)
    begin
      if (sel)
        out = a;       
      else
        out = b;
    end
endmodule