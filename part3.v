module part3 #(parameter AWIDTH = 32, BWIDTH = 32)
(
    input clk,
    input signed [AWIDTH-1:0] ar, ai,
    input signed [BWIDTH-1:0] br, bi,
    output signed [AWIDTH+BWIDTH+1:0] pr, pi
    );
 
 
    reg [64:0] mult1, mult2, mult3, mult4;
    
    always @(posedge clk) begin
        mult1 <= ar*br;
        mult2 <= ai*bi;
        mult3 <= ar*bi;
        mult4 <= br*ai;
    end
    
 assign pr = mult1 - mult2;
 assign pi = mult3 + mult4;
 
    
endmodule
