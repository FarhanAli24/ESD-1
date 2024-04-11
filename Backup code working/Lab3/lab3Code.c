#include "io.h"
#include <stdio.h>
#include "system.h"
#include "alt_types.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_timer.h"

// create standard embedded type definitions
typedef   signed char   sint8;              // signed 8 bit values
typedef unsigned char   uint8;              // unsigned 8 bit values
typedef   signed short  sint16;             // signed 16 bit values
typedef unsigned short  uint16;             // unsigned 16 bit values
typedef   signed long   sint32;             // signed 32 bit values
typedef unsigned long   uint32;             // unsigned 32 bit values
typedef         float   real32;             // 32 bit real values


//set up pointers to peripherals
//unsigned char* LedPtr      = (unsigned char*)LEDS_BASE;
unsigned char* swPtr	   = (unsigned char*)SWITCHES_BASE;
unsigned char* hex0Ptr	   = (unsigned char*)HEX0_BASE;

volatile uint32* keyPtr	   = (uint32*)PUSHBUTTONS_BASE;
volatile uint8* LedPtr    = (uint8 *) 0x11030;
volatile uint32* TimerPtr  = (uint32 *) 0x11000;

int i = 0;

/*****************************************************************************/
/* Interrupt Service Routine                                                 */
/*   Determines what caused the interrupt and calls the appropriate          */
/*  subroutine.                                                              */
/*                                                                           */
/*****************************************************************************/

 void key_isr(void *context)
 {


						//0     1    2     3     4	   5     6     7     8     9
	int numbers[10] = {0x040,0x079,0x024,0x030,0x019,0x012,0x002,0x078,0x000,0x010}; //Containts all numbers
	*(keyPtr + 3) = 0x002;

    int switch0 = *swPtr & 0x001; //using Switch 0

	if(switch0 & 0x001)//if switch is high increment
	{
		if( i < 9)
		{

			//increment hex0Ptr
			i++;
		}

	}
	else
	{
		if(i > 0)
		{
			//decrement hex0Ptr
			i--;
		}
	}
	*hex0Ptr = numbers[i];//update display

    return;
}

 void timer_isr(void *context)
 /*****************************************************************************/
 /* Interrupt Service Routine                                                 */
 /*   Determines what caused the interrupt and calls the appropriate          */
 /*  subroutine.                                                              */
 /*                                                                           */
 /*****************************************************************************/
 {
	*TimerPtr = 0; //reset timer flag
	unsigned char currVal = *LedPtr;

	if(*LedPtr == 0x00)
	{
		currVal = 0xFF; //All leds on
	}
	else
	{
		currVal = 0x00; //All leds off
	}
	*LedPtr = currVal; //Update leds
 return;
 }

int main(void)
/*****************************************************************************/
/* Main Program                                                              */
/*   Enables interrupts then loops infinitely                                */
/*****************************************************************************/
{

	*(keyPtr + 2) = 0x002; //using Key1 as interrupt enable. Offset is 2 since it is unsigned 32bits
	*LedPtr = 0;//init leds to off

	alt_ic_isr_register(PUSHBUTTONS_IRQ_INTERRUPT_CONTROLLER_ID,PUSHBUTTONS_IRQ,key_isr,0,0);
	alt_ic_isr_register(TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID,TIMER_0_IRQ,timer_isr,0,0);



    while(1)
    {}
    return 0;
}
