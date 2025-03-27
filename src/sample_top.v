module top(CLK_50, CLK_OSC_2, CM, CLK_inter, SPI_SS, SPI_MISO, SPI_SCLK, SPI_MOSI, FLASH_WP_n, FLASH_HOLD_n, LED, SEG, KEY, SW);
	/* FPGA Clocks */
	input CLK_50;
	input CLK_OSC_2;
	
	/* Chip Interconnect */
	input [7:0] CM;		// connects to PA0-7 (all of PORTA) of Xmega
                        // CM0 requires SSPI to be set as regular IO
	input CLK_inter; 	// connects to PC0 of Xmega
	
	/* SPI & Flash - FPGA as master configuration - change as needed */
	output SPI_SS;			// SS port - connects to PC4
	input SPI_MISO;			// MISO port - connects to PC6
	output SPI_SCLK;		// SCLK port - connects to PC7
	output SPI_MOSI;		// SCLK port - connects to PC5
	output FLASH_WP_n;		// WP_n port - connects to PE2
	output FLASH_HOLD_n;	// HOLD_n port - connects to PE1
	
	/* FPGA User Interface */
	output reg [7:0] LED;	// yellow LEDs
	output [7:0] SEG;	// 7 segment display: light up = '0', no light = '1'
						// SEG[6:0] lights up G,F,...,A sections, respectively
						// SEG[7] lights up display point (DP)
	
	/* FPGA Button/Switch */
	input [2:0] KEY;	// key buttons
	input [9:0] SW;		// switches: switch up = '0', switch down = '1'
	

    wire [63:0] mcData;
    reg [3:0] cnt;
	reg [63:0] ramData;
    reg [63:0] catData;

	/* FPGA GPIO - Add GPIOs based on HaHa manual*/
	
	
	
	/* Add the remaining circuitry from here*/
    always @(posedge CLK_inter)
        begin
            LED <= CM; // Changed assignment operator from "=" to "<="
            catData <= {catData[62:0], CM}; // Fixed concatenation to shift left
            cnt <= cnt + 1; // Changed assignment operator from "=" to "<="
            // Need to amend to store the data from MC
            //if (cnt[3:0] == 4'b0000)
            //    ramData <= mcData[63:0];
        end
    assign mcData = catData;
    ram1 ram(.addr(cnt[3:0]), .clk(CLK_inter), .data_in(mcData[63:0]), .wr_en(1'b1), .data_out());
    
endmodule
