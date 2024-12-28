module AND(
  input A,B,
  output saida
);
  assign saida = (A&B);
endmodule 

module XOR(
  input A,B,
  output saida
);
  assign saida = A^B;
endmodule 

module INVERSOR(
  input A,
  output S
);
  assign S = ~A;
endmodule 

module ANDXORN(
  input A,B,C,
  output saida
);
  wire r1,r2;
  
  AND AND1(.A(A),.B(B),.saida(r1));
  XOR XOR1(.A(r1),.B(C),.saida(r2));
  INVERSOR INVERSOR1(.A(r2),.S(saida));
  
endmodule
  
  
  