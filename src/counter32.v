module counter32(clk, reset, out);
    input clk, reset;
    output [31:0] out;
    
    reg [31:0] val /* synthesis syn_preserve=1 */;
    
    always@(posedge clk or posedge reset) begin
        if(reset) begin
            val <= 0;
        end else begin
            val <= val + 1;
        end
    end

    assign out = val;

endmodule