contiki-stm32
=============

contiki for stm32

this project is test under ALIENTEK ministm32 with summon tool chain, for more, see
http://jerusalemdax.wordpress.com/2013/04/18/linux%E4%B8%8Bcontiki%E5%9F%BA%E4%BA%8Estm32%E4%B8%8A%E7%9A%84%E7%A7%BB%E6%A4%8D/

to test this project ,you need to get the summon tool chain first,
please visit https://github.com/esden/summon-arm-toolchain

you may also need the stm32flash tool to flash stm32 with serial port
if you have no jlink or other debugger
see https://code.google.com/p/stm32flash/

then 

cd example/hello-world

make TARGET=miniSTM32 savetarget

make

stm32flash -b 115200 -w projectname.hex -g 0x0 -v /dev/ttyUSB0

you may see the led blinks and the minicom shows message

good luck!
