/*
 * W25N_xmega.c
 *
 * Created: 4/27/2023 3:37:46 PM
 *  Author: reinerdizon
 */ 
#include "W25N_xmega.h"
#include "haha_v3_xmega.h"

void W25N_SPI_init()
{
	/* Init SS pin as output with wired AND and pull-up */
	W25N_SS_PORT.DIRSET = W25N_SS_PIN;
	W25N_SS_PORT.PIN4CTRL = PORT_OPC_WIREDANDPULL_gc;
	W25N_SS_PORT.OUTSET = W25N_SS_PIN; // Set SS output to high (no slave selected).
	
	/* Activate HOLD Pin for W25N EEPROM */
	W25N_HOLD_N_PORT.DIRSET = W25N_HOLD_N_PIN;
	W25N_HOLD_N_PORT.OUTSET = W25N_HOLD_N_PIN;
	
	/* Disable WP Pin for W25N EEPROM */
	W25N_WP_N_PORT.DIRSET = W25N_WP_N_PIN;
	W25N_WP_N_PORT.OUTSET = W25N_WP_N_PIN;

	/* Initialize SPI master on HaHa v3 */
	haha_v3_SPIBegin();
	
}

int W25N_begin()
{
	uint8_t mfr_id, dev_id_h, dev_id_l;
	uint16_t dev_id;
	
	/* Initialize SPI */
	W25N_SPI_init();
	
	/* Check for JEDEC ID - WHO_AM_I detection */
	W25N_ss_en();
	SPI_MasterTransceiveByte(&spiMasterC, 0x9F);
	SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	mfr_id = SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	dev_id_h = SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	dev_id_l = SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	W25N_ss_di();
	
	dev_id = (dev_id_h << 8) | dev_id_l;
	
	if(mfr_id == WINBOND_MAN_ID && dev_id == W25N01GV_DEV_ID)
	{
		W25N_setStatusReg(W25N_PROT_REG, 0x00);
		return 0;
	}
	
	return 1;
}


void W25N_write(uint16_t addr, uint8_t data){
	W25N_writeEnable();
	
	W25N_ss_en();
	// write instruction
	SPI_MasterTransceiveByte(&spiMasterC, W25N_PROG_DATA_LOAD);
	// write address
	SPI_MasterTransceiveByte(&spiMasterC, (addr & 0xFF00) >> 8);
	SPI_MasterTransceiveByte(&spiMasterC, addr & 0xFF);
	// transmit data
	SPI_MasterTransceiveByte(&spiMasterC, data);
	W25N_ss_di();
}

uint8_t W25N_read(uint16_t addr){
	uint8_t data;	// received data
	W25N_ss_en();
	// write instruction
	SPI_MasterTransceiveByte(&spiMasterC, W25N_READ);
	// write address
	SPI_MasterTransceiveByte(&spiMasterC, (addr >>  8) & 0xFF);
	SPI_MasterTransceiveByte(&spiMasterC, addr & 0xFF);
	SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	// read data
	data = SPI_MasterTransceiveByte(&spiMasterC, 0x00);
	W25N_ss_di();
	return data;
}

void W25N_setStatusReg(char reg, char set){
	W25N_ss_en();
	SPI_MasterTransceiveByte(&spiMasterC, W25N_WRITE_STATUS_REG);
	SPI_MasterTransceiveByte(&spiMasterC, reg);
	SPI_MasterTransceiveByte(&spiMasterC, set);
	W25N_ss_di();
}


void W25N_writeEnable()
{
	W25N_ss_en();
	SPI_MasterTransceiveByte(&spiMasterC, W25N_WRITE_ENABLE);
	W25N_ss_di();
}


void W25N_writeConsecutive(uint16_t start_addr){
	int i;
	W25N_writeEnable();
	
	W25N_ss_en();
	// write instruction
	SPI_MasterTransceiveByte(&spiMasterC, W25N_PROG_DATA_LOAD);
	// write address
	SPI_MasterTransceiveByte(&spiMasterC, (start_addr & 0xFF00) >> 8);
	SPI_MasterTransceiveByte(&spiMasterC, start_addr & 0xFF);
	// transmit data
	for(i = 0; i < 256; i++)
	{
		SPI_MasterTransceiveByte(&spiMasterC, i);
	}
	
	W25N_ss_di();
}
