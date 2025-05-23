module seq_detector_moore(
    input clk,
    input rst,
    input din,
    output reg dout
);
    parameter IDLE = 3'b000,
              S0 = 3'b001,
              S1 = 3'b010,
              S2 = 3'b101;
    reg[2:0] NS, PS;

    always @(posedge clk) begin
        if(!rst)
            PS = IDLE;
        else
            PS = NS; 

    end

    always @(PS or din) begin
        dout = 0;
        case (PS)
            IDLE :  begin
                if(din)
                    NS = S0;
                else 
                    NS = IDLE;
            end
            S0 : begin
                if(din)
                    NS = S0;
                else 
                    NS = S1;
            end
            S1: begin
                if(din)begin
                    NS <= S2;
                end
                else
                    NS = IDLE;
            end
            S2: begin
            
                if(din)begin
                   
                    NS <= IDLE;
                end
                else
                    NS = S1;
            end
            default: NS = IDLE;  
        endcase
    end
    always @(PS) begin
        case (PS)
            S2: begin
                dout = 1;
            end 
            default: dout = 0;
        endcase
    end
endmodule

module seq_detector_tb();
    reg clk=0,rst=1,din;
    wire out;
    seq_detector_moore dut(clk,rst,din,out);
    always #5 clk = ~clk;
    initial begin
        rst = 0; #10;
        rst = 1; #10;
        
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
    end
endmodule