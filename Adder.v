
module Adder(of,s0,s1,s2,s3,s4,s5,x0,y0,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5);
output of,s0,s1,s2,s3,s4,s5;
input x0,y0,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5;

wire g[5:0];
wire p[5:0];
wire l0[5:0];
wire l1[3:0];
wire l2[2:0];
wire htoxor[4:0];



	Ent_Module ent0(
	.g (g[0]),
	.p (p[0]),
	.h (s0),
	.x (x0),
	.y (y0)
	);
	
	Ent_Module ent1(
	.g (g[1]),
	.p (p[1]),
	.h (htoxor[0]),
	.x (x1),
	.y (y1)
	);
	
	Ent_Module ent2(
	.g (g[2]),
	.p (p[2]),
	.h (htoxor[1]),
	.x (x2),
	.y (y2)
	);
	
	Ent_Module ent3(
	.g (g[3]),
	.p (p[3]),
	.h (htoxor[2]),
	.x (x3),
	.y (y3)
	);
	
	Ent_Module ent4(
	.g (g[4]),
	.p (p[4]),
	.h (htoxor[3]),
	.x (x4),
	.y (y4)
	);
	
	Ent_Module ent5(
	.g (g[5]),
	.p (p[5]),
	.h (htoxor[4]),
	.x (x5),
	.y (y5)
	);
	
	GP_Module gp0(
	.Ghl(l0[0]),
	.Phl(l0[1]),
	.Gh(g[1]),
	.Ph(p[1]),
	.Gl(g[0]),
	.Pl(p[0]));
	
	GP_Module gp1(
	.Ghl(l0[2]),
	.Phl(l0[3]),
	.Gh(g[3]),
	.Ph(p[3]),
	.Gl(g[2]),
	.Pl(p[2]));
	
	GP_Module gp2(
	.Ghl(l0[4]),
	.Phl(l0[5]),
	.Gh(g[5]),
	.Ph(p[5]),
	.Gl(g[4]),
	.Pl(p[4]));
	
	GP_Module gp3(
	.Ghl(l1[0]),
	.Phl(l1[1]),
	.Gh(g[2]),
	.Ph(p[2]),
	.Gl(l0[0]),
	.Pl(l0[1]));
	
	GP_Module gp4(
	.Ghl(l1[2]),
	.Phl(l1[3]),
	.Gh(l0[2]),
	.Ph(l0[3]),
	.Gl(l0[0]),
	.Pl(l0[1]));
	
	GP_Module gp5(
	.Ghl(l2[0]),
	.Phl(l2[1]),
	.Gh(g[4]),
	.Ph(p[4]),
	.Gl(l1[2]),
	.Pl(l1[3]));
	
	GP_Module gp6(
	.Ghl(of),
	.Phl(l2[2]),
	.Gh(l0[4]),
	.Ph(l0[5]),
	.Gl(l1[2]),
	.Pl(l1[3]));
	
	
	xor x2(s1,htoxor[0],g[0]);
	xor x3(s2,htoxor[1],l0[0]);
	xor x4(s3,htoxor[2],l1[0]);
	xor x5(s4,htoxor[3],l1[2]);
	xor x6(s5,htoxor[4],l2[0]);
	
endmodule
