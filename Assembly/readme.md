# Lily 58 Koca Assembly

This directory contains files that are used to flash the Lily58 Koca during PCB assembly, 3D printing files, and a mechanical assembly guide throughout the rest of this README.

## BOM

This BOM is for mechanical parts that are needed to assemble both halves of the keyboard; PCB BOMs are located here.
|Part                           |Qty  |Description                          |
|-------------------------------|-----|-------------------------------------|
|M2 x 8mm standoff              |14   |Mounting plate & PCB to case         |
|M2 x 4mm wafer head screw      |36   |Mounting standoffs                   |
|M2 rubber cap                  |8    |Preventing tenting legs from sliding |
|3.5mm TRRS cable               |1    |Connecting keyboard halves           |

## Mechanical Assembly Guide
Install standoffs into the plates for both sides of the keyboard.

Insert keyswitches through the plate and into hotswap sockets. Populate the corners of the board first and then move in.

Screw the standoffs into both acrylic pieces and then screw them into the PCB. These pieces aren't perfectly symmetric; one side has its hole closer to the edge; this side should face the keycaps.

Install tenting legs (optional).

Screw the plate and PCB assembly into the bottom of the case.

Done! Remember not to hot-plug the TRRS cable or plug both USB-C connectors in at the same time.

## Flashing
The files in this directory are used to flash the keyboard from the factory. If you aren't getting the PCB manufactured yourself you should just use the files in the [qmk repository](https://github.com/qmk/qmk_firmware/tree/master/keyboards/koca).

On linux the following command can be used to flash the bootloader using an st-link: `$ st-flash write bootloader.bin 0x8000000`

The qmk firmware can be flashed using `$ dfu-util -a 2 -d 1EAF:0003 -D koca_vial.bin` while the board is in DFU mode (press the reset button to enter DFU mode).

