# Smallcat

A 26-key split keyboard, still featuring the purr-fect code reviewer, my cat, Lila.

This repo contains gerber files, Kicad files, my keymap, and a version of the QMK and Vial-QMK firmware for the Smallcat.

![smallcat](./images/smallcat.png)

## Details

- RP2040-Zero footprint
- Low profile choc switches, soldered only
- Diodeless
- TRRS jack connector
- Splay: 
  - 10° pinkie
  - 5° ring finger
  - 2° middle finger

## Case

Smallcat has a no-screw case. The base of the case is 1mm larger than the PCB, which allows
for it to slide right in without the need for screws to hold it. I've placed 
little bumptons under the PCB in order for the pins to not sit directly against 
the case.

![case](./images/case1.png)
![case2](./images/case2.png)

## Keymap

![keymap](https://github.com/smallwat3r/qmk-smallwat3r-userspace/blob/main/images/keymap.png)

## Firmware

A UF2 file for QMK and QMK-Vial can be found [here](./firmware/). 

I also maintain my [QMK userspace](https://github.com/smallwat3r/qmk-smallwat3r-userspace), from where you can find my QMK configuration and keymap for the Smallcat.

Else, you can find the source configuration files for Vial from the [Vial repository](https://github.com/vial-kb/vial-qmk/tree/vial/keyboards/smallcat).

![lila](./images/lila.png)
