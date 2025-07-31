## What's in this overlay

- Merge fix from upstream
    - Fix null pointer reference in `sd.c`
    - Fix sound issue under soft-pwm driver & retroarch
    - Enable overlay fs support
- DTS changes
    - Switch from hard-pwm sound to soft-pwm sound
    - Change ds3231 reg to 0x57 (for working with https://detail.tmall.com/item.htm?id=42579765423)
- Kernel
    - Enable MMC SPI driver
- Packages
    - Enable X11
    - Enable RetroArch
    - Enable many other packages
