#include "io.h"
#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "alt_types.h"
#include "sys/alt_irq.h"

// Create standard embedded type definitions
typedef   signed char   sint8;              // signed 8 bit values
typedef unsigned char   uint8;              // unsigned 8 bit values
typedef   signed short  sint16;             // signed 16 bit values
typedef unsigned short  uint16;             // unsigned 16 bit values
typedef   signed long   sint32;             // signed 32 bit values
typedef unsigned long   uint32;             // unsigned 32 bit values
typedef         float   real32;             // 32 bit real values

// Pointers for peripherals
uint32*	LEDRPtr = (uint32*)LEDS_BASE;
uint8* bytePtr = (uint32*)INFERRED_RAM_BASE;
uint32* wordPtr = (uint32*)INFERRED_RAM_BASE;
uint16* halfWordPtr = (uint32*)INFERRED_RAM_BASE;
volatile uint32* KEYPtr = (uint32*)KEY1_BASE;
//volatile uint32 address = 0;
uint8 byteTest = 0;
uint32 wordTest = 0;
uint16 halfWordTest = 0;

volatile uint32 byteSize;

void eightBitTest(uint8 address, uint32 bytes_size, uint8 byte)//byte=8bits Test
{

	for(int i = address; i < bytes_size; i++)
	{
		*(bytePtr+i) = byte;

	}


	for(int i = address; i < bytes_size; i++)
	{
		*LEDRPtr = 0x00;
		byteTest = *(bytePtr+i);

		if (byteTest != byte)
		{
			*LEDRPtr = 0xFF;
		}
	}
	return;
}

void ThirtyTwoBitTest(uint32 address, uint32 bytes_size, uint32 word)//word=32bits
{

	for(int i = address; i < bytes_size/4; i++)
	{
		*LEDRPtr = 0x00;
		*(wordPtr+i) = word;
	}

	for(int i = address; i < bytes_size/4; i++)
	{
		*LEDRPtr = 0x00;
		wordTest = *(wordPtr+i);

		if (wordTest != word)
		{
			*LEDRPtr = 0xFFFF;
		}
	}
	return;
}

void SixteenBiteTest(uint16 address, uint16 bytes_size, uint16 halfWord)//word=32bits
{

	for(int i = address; i < bytes_size/2; i++)
	{
		*LEDRPtr = 0x00;
		*(halfWordPtr+i) = halfWord;

	}


	for(int i = address; i < bytes_size/2; i++)
	{
		*LEDRPtr = 0x00;
		halfWordTest = *(halfWordPtr+i);

		if (halfWordTest != halfWord)
		{
			*LEDRPtr = 0xFFFF;
		}
	}
	return;
}


int main (void)
{
	*LEDRPtr = 0x00;

	while(1)
	{
		eightBitTest(0,0x4000,0xEF);
		ThirtyTwoBitTest(0,0x4000,0x12345678); //0x12345678
		SixteenBiteTest(0,0x4000,0xABCD);
	}
	return(0);
}