//Program to read from switches and display on LED on the LPC2378 ARM kit 
#include<lpc23xx.h>

int main ()
{
		unsigned int a,b,sum;
		//int i = 0x00000000;
		//int b = 0x00000000;
		

	    FIO3DIR=0x000000FF ;  //setting port 3 as output port
		FIO4DIR=0x0000000;    //setting port 4 as input port
while(1){	//Setting the lower 8 bits of PORT 3 ( 8 leds ) as output port
	

	a=FIO4PIN;
	b=a;
	
	b=b&0x0F;
	
	a=a&0xF0;
	a = a>>4;
	sum=a+b;
	
	FIO3PIN=sum;
}
	return 0;
	
}	