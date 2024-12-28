module testbench;
  
  reg [3:0]in;
  reg [1:0]control;
  wire saida;
  wire x,y;
  
  MUX MUX1(.d0(in[3]),.d1(in[2]),.C(control[0]),.out(x));
  MUX MUX2(.d0(in[1]),.d1(in[0]),.C(control[0]),.out(y));
  MUX MUX3(.d0(x),.d1(y),.C(control[1]),.out(saida));
  
  initial
    begin
      $display("Três muxs");
      $monitor("Time = %g | in[0] = %b, in[1] = %b,in[2] = %b, in[3] = %b, control[0] = %b,control[1] = %b, x = %b, y = %b, saida = %b",$time, in[0],in[1],in[2],in[3],control[0],control[1],x,y,saida);

    end 
  
  initial
    begin
      in[0] = 1;
      in[1] = 0;
      in[2] = 1;
      in[3] = 0;
      control[0] = 0;
      control[1] = 1;
    end
  
endmodule
           