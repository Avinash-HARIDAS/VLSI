module basicGates(a,b,ny,oy,ay,nay,noy,xoy,xny);
	input a,b;
	output ny,oy,noy,ay,nay,xoy,xny;
	assign ny = ~a;
	assign oy = a|b;
	assign noy = ~(a|b);
	assign ay = a&b;
	assign nay = ~(a&b);
	assign xoy = a^b;
	assign xny = ~(a^b);
endmodule

//Test Bench
module basicGates_tb;
	reg a,b;
	wire ny,oy,noy,ay,nay,xoy,xny;
	
	basicGates dut(a,b,ny,oy,ay,nay,noy,xoy,xny);
	initial begin
		a=0; b=0; #10;
		a=0; b=1; #10;
		a=1; b=0; #10;
		a=1; b=1; #10;
	end
endmodule 