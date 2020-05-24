module Ent_Module(g,p,h,x,y);
	output g,p,h;
	input x,y;
	 and a1(g,x,y);
	 or o1(p,x,y);
	 xor x1(h,x,y);
endmodule
