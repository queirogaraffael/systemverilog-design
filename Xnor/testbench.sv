module testbench;
  
  reg in1,in2;
  wire saida;
  
  XNOR XNOR1(.A(in1),.B(in2),.S(saida));
  
  initial
    begin
      $display("Você vai aprender verilog");
      $monitor("in1 = %b, in2 = %b, saida = %b",in1,in2,saida);
    end 
  
  initial
    begin
      in1 = 0;
      in2 = 0;
      #1 in2 = 1;
    end
  
endmodule