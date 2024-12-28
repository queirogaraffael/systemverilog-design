module MUX(
  input d0,d1,
  input C,
  output out
);
  assign out = C ? d1:d0;
endmodule