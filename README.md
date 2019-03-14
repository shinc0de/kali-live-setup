# Scripts / configs i need when booting into live kali

## How to get xrandr parameters
Use "cvt" to get these params to add your custom resolution
e.g.: 
\#:~ cvt 2560 1440
returns something like: 
\# 2560x1440 59.96 Hz (CVT 3.69M9) hsync: 89.52 kHz; pclk: 312.25 MHz
Modeline "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync

after that you can you xrandr as in **bashkali-live-setup.sh**
