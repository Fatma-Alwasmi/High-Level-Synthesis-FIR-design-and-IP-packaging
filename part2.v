module part2 #(parameter AWIDTH = 18, BWIDTH = 18)
(
    input clk,
    input signed [AWIDTH-1:0] ar, ai,
    input signed [BWIDTH-1:0] br, bi,
    output signed [AWIDTH+BWIDTH+1:0] pr, pi
    );
 
 assign pr = ar*br - ai*bi;
 assign pi = ar*bi + br*ai;
 
    
endmodule
