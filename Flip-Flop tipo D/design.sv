module FFD(
  input d,clk,reset, en,
  output reg q
);
  always @(posedge clk,posedge reset)
    begin
    if(reset) q<=1'b0;
 	else if (en) q<=d;
    end
endmodule