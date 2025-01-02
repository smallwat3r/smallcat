# Smallcat

A 26-key split keyboard, still featuring the purr-fect code reviewer, my cat, Lila.

This repo contains gerber files, Kicad files, my keymap, and a version of the Vial firmware for the Smallcat.

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

My QMK-Vial keymap can be found [here](https://github.com/smallwat3r/vial-keymap).

![keymap](https://github.com/smallwat3r/vial-keymap/blob/main/images/keymap.png)

## Firmware

A UF2 file for Vial can be found [here](./firmware/smallcat_vial.uf2). Else, you can find the
source configuration files from the
[Vial repository](https://github.com/vial-kb/vial-qmk/tree/vial/keyboards/smallcat) (note these
configs are not up to date with the keymap above).

![lila](./images/lila.png)
