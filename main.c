#include <stdint.h>
#include <avr/io.h>
#include <stdio.h>
#include "helper/haha_v3_xmega.h"

//#include "spi_driver.h"#include "haha_v3_xmega.h"

const uint8_t KEY = 0;
/* @brief
* this snippet initializes the pins connecting the Flash module to the
Microcontroller
*/

int main(void) {
	// YOUR CODE HERE

	// run once
	uint8_t start_addy = 0x2000;
	uint8_t curr_addy = start_addy;
	uint8_t *SRAM_PTR;
	uint8_t PWState[64];

	int count = 0;
	haha_v3_interBegin();
	//while(1){
	for(count = 0; count <= 64; count++){
		// run forever

		SRAM_PTR = curr_addy;

		PWState[count] = SRAM_PTR;
		curr_addy++;

		//haha_v3_sendDataToFPGA(SRAM_PTR);
		//send code to fpga
	}
	for(count = 0; count <= 64; count++){
		// run forever

		SRAM_PTR = curr_addy;

		PWState[count] = *SRAM_PTR;
		curr_addy++;

		haha_v3_sendDataToFPGA(PWState[count]);
		//send code to fpga
	}
	//}
}