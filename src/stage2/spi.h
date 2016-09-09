#ifndef _SPI_H_
#define _SPI_H_
#include <stdint.h>

#define SPI_REG_DATA *((uint32_t *) 0x200000UL)
#define SPI_REG_STATUS *((uint32_t *) 0x200004UL)
#define SPI_REG_SS *((uint32_t *) 0x200008UL)

void spi_select_slave(int slave);
uint8_t spi_send_recv(uint8_t dat);

#endif
