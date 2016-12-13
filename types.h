#ifndef TYPES_H
#define TYPES_H

#define STK 0xE000E010
#define STK_CTRL ((volatile unsigned int*) (STK))
#define STK_LOAD ((volatile unsigned int*) (STK+0x04))
#define STK_VAL ((volatile unsigned int*) (STK+0x08))
#define STK_CALIB ((volatile unsigned int*) (STK+0xC))
 
#define B_E 0x40
#define B_SELECT 4
#define B_RW 2
#define B_RS 1
#define B_RST 0x20
#define B_CS2 0x10
#define B_CS1 0x8
 
#define LCD_ON 0x3F /* Display på */
#define LCD_OFF 0x3E /* Av */
#define LCD_SET_ADD 0x40 /* Set X adress (0 – 63) */
#define LCD_SET_PAGE 0xB8 /* Set Y adress (0 – 7) */
#define LCD_DISP_START 0xC0 /* Start adress i display minne */
#define LCD_BUSY 0x80 /* läsa ut busy status. R/W skall vara hög */

#endif //types_h