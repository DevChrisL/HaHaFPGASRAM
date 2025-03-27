#include <stdint.h>
#include <avr/io.h>
#include <stdio.h>
#include "haha_v3_xmega.h"

const uint8_t KEY = 0;

/* @brief 
 * this snippet initializes the pins connecting the Flash module to the Microcontroller
 */
void haha_v3_flash_begin(void){
	
	/* init FLASH and ACC SS to OUTPUT and HIGH */
	W25N_SS_PORT.DIRSET = W25N_SS_PIN;
	W25N_SS_PORT.PIN4CTRL = PORT_OPC_WIREDANDPULL_gc;
	
	MC3635_SS_PORT.DIRSET = MC3635_SS_PIN;
	MC3635_SS_PORT.PIN3CTRL = PORT_OPC_WIREDANDPULL_gc;
	
	/* initialize FLASH HOLD and WP to HIHG. mo hold and no write protection */
	W25N_HOLD_N_PORT.DIRSET = W25N_HOLD_N_PIN;
	W25N_WP_N_PORT.DIRSET = W25N_WP_N_PIN;
	
	/* initialize all to HIGH */
	W25N_SS_PORT.OUTSET = W25N_SS_PIN;						// HIGH = Disable Slave Chip
	MC3635_SS_PORT.OUTSET = MC3635_SS_PIN;					// HIGH = Disable Slave Chip
	W25N_HOLD_N_PORT.OUTSET = W25N_HOLD_N_PIN;				// HIGH = Allow Transmission (Does not "HOLD")
	W25N_WP_N_PORT.OUTSET = W25N_WP_N_PIN;					// HIGH = Allow Writing (Write Unprotected)
}

int main(void){

	// Set SS Low to rw
	W25N_ss_en();
	
	// Initialize SPI
	haha_v3_SPIBegin();

	// run once
	haha_v3_flash_begin();
	
	// Write Key
	SPI_MasterTransceiveByte(&spiMasterC, KEY);

	// Read Key
	read_data = SPI_MasterTransceiveByte(&spiMasterC, KEY);
	
	// Set SS High to end rw
	W25N_ss_di();
	
	while (1){
		// run forever
	}
}
