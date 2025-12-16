# Flashing
The files in this directory are used to flash the keyboard from the factory. If you aren't getting the PCB manufactured yourself you should just use the files in the [qmk repository](https://github.com/qmk/qmk_firmware/tree/master/keyboards/koca).

On linux the following command can be used to flash the bootloader using an st-link: `$ st-flash write bootloader.bin 0x8000000`

The qmk firmware can be flashed using `$ dfu-util -a 2 -d 1EAF:0003 -D koca58_vial.bin` while the board is in DFU mode (press the reset button to enter DFU mode).

