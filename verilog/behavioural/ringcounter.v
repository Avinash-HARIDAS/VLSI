module ring_counter (
    input clk,
    input rst,
    output reg[3:0] q
);
    always @(posedge clk ) begin
        if (rst)
            q <= 4'b0001; 
        else 
            q <= {q[2:0], q[3]}; 
    end
endmodule

module ring_counter_tb ();
    reg clk=0, rst;
    wire[3:0] q;
    ring_counter dut (clk, rst, q);
    always #5 clk = ~clk;
    initial begin
        rst = 1; #10; 
        rst = 0;
    end
endmodule