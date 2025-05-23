module mux_2x1(d0,d1,s,y);
	input d0,d1,s;
	output y;
	wire sBar,t1,t2;
	not(sBar,s);
	and(t1,d0,sBar);
	and(t2,d1,s);
	or(y,t1,t2);
endmodule


module mux_4x1(d0,d1,d2,d3,s0,s1,y);
	input d0,d1,d2,d3,s0,s1;
	output y;
	wire t1,t2;
	mux_2x1 m0(d0,d1,s0,t1);
	mux_2x1 m1(d2,d3,s0,t2);
	mux_2x1 m2(t1,t2,s1,y);
endmodule
//TestBench

module mux_4x1_tb;
	reg d0,d1,d2,d3,s0,s1;
	wire y;
	
	mux_4x1 dut(d0,d1,d2,d3,s0,s1,y);
	
	initial begin
		s0=0; s1=0; d0=1; d1=0; d2=0; d3=1; #10;
		s0=0; s1=0; d0=0; d1=1; d2=1; d3=1; #10;
		s0=0; s1=1; d0=0; d1=1; d2=0; d3=0; #10;
		s0=0; s1=1; d0=1; d1=0; d2=1; d3=1; #10;
		s0=1; s1=0; d0=0; d1=0; d2=1; d3=0; #10;
		s0=1; s1=0; d0=1; d1=1; d2=0; d3=1; #10;
		s0=1; s1=1; d0=0; d1=0; d2=0; d3=1; #10;
		s0=1; s1=1; d0=1; d1=1; d2=1; d3=0; #10;

	end
endmodule
	