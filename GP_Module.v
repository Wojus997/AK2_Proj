module GP_Module(Ghl,Phl,Gh,Ph,Gl,Pl);
  output Ghl,Phl;
  input Gh,Ph,Gl,Pl;
  wire and_wire;
  or o1(Ghl,Gh,and_wire);
  and a1(and_wire,Ph,Gl);
  and a2(Phl,Ph,Pl);
  
endmodule
