#ifndef PORTS_H
#define PORTS_H

 #define GPIO_D 			0x40020C00
 #define GPIO_D_MODER 		((volatile unsigned int*) 	(GPIO_D))
 #define GPIO_D_OTYPER 		((volatile unsigned short*) (GPIO_D+0x4))
 #define GPIO_D_SPEED		((volatile unsigned int*)	(GPIO_D+0x8))
 #define GPIO_D_PUPDR 		((volatile unsigned int*) 	(GPIO_D)+0xC)
 #define GPIO_D_IDR_LOW 	((volatile unsigned char*) 	(GPIO_D+0x10))
 #define GPIO_D_IDR_HIGH 	((volatile unsigned char*) 	(GPIO_D+0x11))
 #define GPIO_D_ODR_LOW 	((volatile unsigned char*) 	(GPIO_D+0x14))
 #define GPIO_D_ODR_HIGH 	((volatile unsigned char*) 	(GPIO_D+0x15))
 
 #define GPIO_E 			0x40021000
 #define GPIO_E_MODER 		((volatile unsigned int*) 	(GPIO_E))
 #define GPIO_E_OTYPER 		((volatile unsigned short*) (GPIO_E+0x4))
 #define GPIO_E_SPEED		((volatile unsigned int*)	(GPIO_E+0x8))
 #define GPIO_E_PUPDR 		((volatile unsigned int*) 	(GPIO_E)+0xC)
 #define GPIO_E_IDR_LOW 	((volatile unsigned char*) 	(GPIO_E+0x10))
 #define GPIO_E_IDR_HIGH 	((volatile unsigned char*) 	(GPIO_E+0x11))
 #define GPIO_E_ODR_LOW 	((volatile unsigned char*) 	(GPIO_E+0x14))
 #define GPIO_E_ODR_HIGH 	((volatile unsigned char*) 	(GPIO_E+0x15))

#endif //ports_h