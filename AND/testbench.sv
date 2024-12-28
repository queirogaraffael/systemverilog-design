module testbench;
  reg in1, in2;
  wire saida;
  
  AND AND1(.A(in1),.B(in2),.S(saida));
  
  
  initial
    begin
      $display("Vamos aprender verilog");
 	  $monitor("in1 = %b, in2 = %b, saida = %b",in1,in2,saida);
    end
  
  initial 
    begin
      in1 = 1;
      in2 = 0;
    end
  
endmodule