module test;

  reg[0:5] x;
  reg[0:5] y;
  reg[0:6] sum;
  wire[0:6] s;
  integer error,i,j;

Adder adder(
  	.of(s[0]),
	.s0(s[6]),
	.s1(s[5]),
	.s2(s[4]),
	.s3(s[3]),
	.s4(s[2]),
	.s5(s[1]),
	.x0(x[5]),
	.y0(y[5]),
	.x1(x[4]),
	.y1(y[4]),
	.x2(x[3]),
	.y2(y[3]),
	.x3(x[2]),
	.y3(y[2]),
	.x4(x[1]),
	.y4(y[1]),
	.x5(x[0]),
	.y5(y[0]));
	initial
		begin
			error=0;
			{x[0:5]}= 0;
			for(i=0;i<64;i++)
			begin
			{y[0:5]}= 0;
				for(j=0;j<64;j++)
				begin
				#1
				
				if({s[0:6]}!={x[0:5]}+{y[0:5]})
					begin
						error=error+1;
						$display("%d%d%d%d%d%d+%d%d%d%d%d%d=%d%d%d%d%d%d%d",x[0],x[1],x[2],x[3],x[4],x[5],y[0],y[1],y[2],y[3],y[4],y[5],s[0],s[1],s[2],s[3],s[4],s[5],s[6]);
					end
				{y[0:5]}={y[0:5]}+1;
				end
			{x[0:5]}={x[0:5]}+1;
			end
			$display("%d",error);
			$finish;
		end
              
endmodule 

