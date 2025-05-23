module mux_4x1(
    input[1:0] si,
    input[3:0] di,
    output y
    );
    assign y = ((~si[1])&(~si[0])&di[0]) | ((~si[1])&(si[0])&di[1]) | ((si[1])&(~si[0])&di[2]) | ((si[0])&(si[1])&di[3]);
endmodule

module mux_16x1(
    input[3:0] si,
    input[15:0] di,
    output y
    );
    wire[3:0] ti;
      mux_4x1 mx0(si[1:0],di[3:0],ti[0]);
      mux_4x1 mx1(si[1:0],di[7:4],ti[1]);
      mux_4x1 mx2(si[1:0],di[11:8],ti[2]);
      mux_4x1 mx3(si[1:0],di[15:12],ti[3]);
      mux_4x1 mx4(si[3:2],ti,y);
endmodule

module mux_16x1_tb();
    reg[15:0] di;
    reg[3:0] si;
    wire y;
    mux_16x1 dut(y,si,di);
    
    initial begin
        si=4'b0000; di=16'h0001; #10; //0000 0000 0000 0001
        si=4'b0001; di=16'h0002; #10;  
        si=4'b0010; di=16'h0004; #10; //0000 0000 0000 0100
        si=4'b0011; di=16'h0008; #10; //0000 0000 0000 1000
        
        si=4'b0100; di=16'h0010; #10;
        si=4'b0101; di=16'h0020; #10;
        si=4'b0110; di=16'h0040; #10;//0000 0000 0100 0000
        si=4'b0111; di=16'h0080; #10;
        
        si=4'b1000; di=16'h0100; #10;
        si=4'b1001; di=16'h0200; #10;
        si=4'b1010; di=16'h0400; #10;
        si=4'b1011; di=16'h0800; #10;
        
        si=4'b1100; di=16'h1000; #10;
        si=4'b1101; di=16'h2000; #10;
        si=4'b1110; di=16'h4000; #10;
        si=4'b1111; di=16'h8000; #10;
    end
endmodule