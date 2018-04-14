/*
 * led.c
 *
 * Created: 9/22/2016 10:30:42 AM
 *  Author: students
 */ 


#include <avr/io.h>
#include <util/delay.h>


int main(void)
{
	DDRD=0x01;
    while(1)
    {
		PORTD=0x01;
		_delay_ms(200);
		PORTD=0x00;
		_delay_ms(200);
		
        //TODO:: Please write your application code 
    }
}