#include "xil_io.h"
#include "xgpio.h"

#define CONST_EXPR__(a) a
#define CONST(a) CONST_EXPR__(a)


#define MY_PWM 0x43C00000
#define MY_BTN 0x41200000

#define PWM_25 CONST(1024 * 0.25)
#define PWM_50 CONST(1024 * 0.5)
#define PWM_75 CONST(1024 * 0.75)
#define PWM_MAX 1024


int main(){
    int num=0;
    volatile int i;

    XGpio gpio;
    XGpio_Initialize(&gpio, 0);

    XGpio_SetDataDirection(&gpio, 1, 0xFFFFFFFF);

    while(1){
        if(num == PWM_MAX)
             num = 0;
        else
             num++;

        if((XGpio_DiscreteRead(&gpio, 1) & 0x1)) // Read button state
        	Xil_Out32(MY_PWM, PWM_25);           // Write a constant to PWM0
        else Xil_Out32(MY_PWM, num);             // Write num to PWM 0

        if((XGpio_DiscreteRead(&gpio, 1) & 0x2))
        	Xil_Out32(MY_PWM+4, PWM_50);
        else Xil_Out32(MY_PWM+4, num);

        if((XGpio_DiscreteRead(&gpio, 1) & 0x4))
        	Xil_Out32(MY_PWM+8, PWM_75);
        else Xil_Out32(MY_PWM+8, num);

        if((XGpio_DiscreteRead(&gpio, 1) & 0x8))
        	Xil_Out32(MY_PWM+12, PWM_MAX);
        else Xil_Out32(MY_PWM+12, num);

        for(i=0;i<300000; i++);
    }
}
