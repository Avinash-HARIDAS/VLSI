module fullAdder(s,c,a,b,cin);
	input a,b,cin;
	output s,c;
	wire t0,t1,t2;
	always @(*) begin
        s = (a^b)^c;
	    c = (a&b)|((a^b)&c);
    end
endmodule

module rippleCarryAdder_4b(s,carry,a,b,cin);
	input[3:0] a,b;
	input cin;
	output[3:0] s;
	output carry;
	wire[2:0] c;
	
	fullAdder fa0(s[0],c[0],a[0],b[0],cin);
	fullAdder fa1(s[1],c[1],a[1],b[1],c[0]);
	fullAdder fa2(s[2],c[2],a[2],b[2],c[1]);
	fullAdder fa3(s[3],carry,a[3],b[3],c[2]);
endmodule

//Test becnch
module rippleCarryAdder_4b_tb;
	reg[3:0] a,b;
	reg cin;
	wire[3:0] s;	
	wire carry;
	rippleCarryAdder_4b dut(s,carry,a,b,cin);
    initial 
    begin
	    a=4'b0010; b=4'b0110; cin=0; #10;	
	end 
endmodule