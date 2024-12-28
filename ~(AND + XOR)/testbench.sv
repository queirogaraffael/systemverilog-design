module testbench;
  reg [2:0]in;
  wire out;
  
  ANDXORN ANDXORN1(.A(in[0]),.B(in[1]),.C(in[2]),.saida(out));
  
  initial 
    begin 
      $display("Porta AND + XOR");
      $monitor("in[0] = %b, in[1] = %b, in[2] = %b, out = %b",in[0],in[1],in[2],out);
    end 
  
  initial 
    begin 
      in[0] = 1;
      in[1] = 1;
      in[2] = 1;
      #1 in[2] = 0;
    end 
endmodule 
  