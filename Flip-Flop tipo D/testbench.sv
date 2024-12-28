module testbench;
  reg [3:0]in;
  wire out;
  
  FFD FFD1(.d(in[0]),.clk(in[1]),.reset(in[2]),.en(in[3]),.q(out));
  
  initial 
    begin
      $monitor("d = %b, clk = %b, reset = %b, en = %b, q = %b",in[0],in[1],in[2],in[3],out);
    end
  
  initial 
    begin 
      in[3] = 1;
      in[0] = 1;
      in[2] = 0;
      in[1] = 1;
    end
endmodule      