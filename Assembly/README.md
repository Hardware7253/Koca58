# Lily 58 Koca Assembly

This directory contains files that are used to flash the Lily58 Koca during PCB assembly, 3D printing files.

## BOM
This BOM is for mechanical parts that are needed to assemble the keyboard kit.

|Part                           |Qty  |Description                          |
|-------------------------------|-----|-------------------------------------|
|M2 x 8mm standoff              |10   |For mounting plate & PCB to case     |
|M2 x 13mm standoff             |4    |For mounting the acrylic piece       |
|M2 x 4mm wafer head screw      |28   |For installing all standoffs         |

## Flashing
The files in this directory are used to flash the keyboard from the factory. If you aren't getting the PCB manufactured yourself you should just use the files in the [qmk repository](https://github.com/qmk/qmk_firmware/tree/master/keyboards/koca).

On linux the following command can be used to flash the bootloader using an st-link: `$ st-flash write bootloader.bin 0x8000000`

The qmk firmware can be flashed using `$ dfu-util -a 2 -d 1EAF:0003 -D koca_vial.bin` while the board is in DFU mode (press the reset button to enter DFU mode).

