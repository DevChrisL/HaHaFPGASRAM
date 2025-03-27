/*
 * main.h
 *
 * Created: 4/27/2023 3:29:56 PM
 *  Author: reinerdizon
 */ 


#ifndef W25N_XMEGA_H
#define W25N_XMEGA_H

#include "haha_v3_xmega.h"
#include <util/delay.h>
#include <avr/io.h>


/* W25N commands */
#define W25N_RESET                0xFF
#define W25N_JEDEC_ID             0x9F
#define W25N_READ_STATUS_REG      0x05
#define W25N_WRITE_STATUS_REG     0x01
#define W25N_WRITE_ENABLE         0x06
#define W25N_WRITE_DISABLE        0x04
#define W25N_BB_MANAGE            0xA1
#define W25N_READ_BBM             0xA5
#define W25N_LAST_ECC_FAIL        0xA9
#define W25N_BLOCK_ERASE          0xD8
#define W25N_PROG_DATA_LOAD       0x02
#define W25N_RAND_PROG_DATA_LOAD  0x84
#define W25N_PROG_EXECUTE         0x10
#define W25N_PAGE_DATA_READ       0x13
#define W25N_READ                 0x03
#define W25N_FAST_READ            0x0B

#define W25N_PROT_REG             0xA0
#define W25N_CONFIG_REG           0xB0
#define W25N_STAT_REG             0xC0

#define WINBOND_MAN_ID            0xEF
#define W25N01GV_DEV_ID           0xAA21

/* Function prototypes */
void W25N_SPI_init();
int W25N_begin();
void W25N_write(uint16_t addr, uint8_t data);
uint8_t W25N_read(uint16_t addr);

void W25N_setStatusReg(char reg, char set);
void W25N_writeEnable();
void W25N_writeConsecutive(uint16_t start_addr);

#endif /* W25N_XMEGA_H */