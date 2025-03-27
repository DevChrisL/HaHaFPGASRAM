module top(CLK_50, CLK_OSC_2, CM, CLK_inter, SPI_SS, SPI_MISO, SPI_SCLK, SPI_MOSI, FLASH_WP_n, FLASH_HOLD_n, LED, SEG, KEY, SW);
    /* FPGA Clocks */
    input wire CLK_50;
    input CLK_OSC_2;
    
    /* Chip Interconnect */
    input [7:0] CM;  // 8-bit signal

    // CM0 requires SSPI to be set as regular IO
    input CLK_inter;    // connects to PC0 of Xmega
    wire [9:0] ro_outputs;
    /* SPI & Flash - FPGA as master configuration - change as needed */
    output SPI_SS;            // SS port - connects to PC4
    input SPI_MISO;            // MISO port - connects to PC6
    output SPI_SCLK;        // SCLK port - connects to PC7
    output SPI_MOSI;        // SCLK port - connects to PC5
    output FLASH_WP_n;        // WP_n port - connects to PE2
    output FLASH_HOLD_n;    // HOLD_n port - connects to PE1
    
    /* FPGA User Interface */
    output reg [7:0] LED;    // yellow LEDs
    output [7:0] SEG;    // 7 segment display: light up = '0', no light = '1'
                        // SEG[6:0] lights up G,F,...,A sections, respectively
                        // SEG[7] lights up display point (DP)
    
    /* FPGA Button/Switch */
    input [2:0] KEY;    // key buttons
    input [9:0] SW;        // switches: switch up = '0', switch down = '1'
    
    // RO-based TRNG with ten 5-stage ROs. 


    // ROs CHANGED TO 30 HERE
    RO_TRNG #(9, 30) ro_trng(.CLK(CLK_50), .RO_OUT(ro_outputs));

    /* FPGA GPIO - Add GPIOs based on HaHa manual*/
    always @(posedge CLK_inter) begin 
        LED = CM;
    end 
endmodule

//ring oscillator module
module RO_STAGE(input CLK, output RO_OUT);
    reg [4:0] ro_stage;
    always @(posedge CLK) begin
        ro_stage <= {ro_stage[3:0], ~ro_stage[4]};
    end
    assign RO_OUT = ro_stage[4];
endmodule

//ring oscilator true random number generator
module RO_TRNG #(parameter STAGE = 9, N = 30)(input CLK, output [N-1:0] RO_OUT);
    generate
        genvar i;
        for (i = 0; i < N; i = i + 1) begin
            RO_STAGE ro(.CLK(CLK), .RO_OUT(RO_OUT[i]));
        end
    endgenerate
endmodule