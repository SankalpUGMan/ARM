#include "LPC23xx.h"


// delay routine 

void delay(int k)
{
int i,j;
for(i=0; i<k;i++)
for(j=0; j<0XFF;j++);
}

/************************* main routine ************************************************************/
 


int main(void)
{
IODIR0 = 0X03C0;
while(1)
{
 
  IOPIN0=0X00000240;
  delay(0xFF);
  
  IOPIN0=0X00000140;
  delay(0xFF);
  
  IOPIN0=0X00000180;
  delay(0xFF);
  
  IOPIN0=0X00000280;
  delay(0xFF);
  
 
}

return 0;
}
  