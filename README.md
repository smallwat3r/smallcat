# Smallcat

A 26-key keyboard, featuring the purr-fect code reviewer, my cat, Lila.

This repo contains gerber files, Kicad files, my keymap, and links to a QMK and Vial-QMK firmware version for the Smallcat.

## Details

There are two versions of the Smallcat, a split and a unibody version.

For both boards, the splay is the same:
- 10° pinkie
- 5° ring finger
- 2° middle finger

### Split

![smallcat](./images/smallcat.png)

- 2x RP2040-Zero footprint, [example](https://www.waveshare.com/wiki/RP2040-Zero)
- 26 low profile choc switches, soldered only
- Diodeless
- TRRS jack connector

### Unibody
  
![smallcat](./images/smallcat-uni.png)

- 1x RP2040 Pro Micro footprint with 28 I/O pins, [example](https://www.aliexpress.com/i/1005006097129434.html)
- 26 low profile choc switches, soldered only
- Diodeless
- A few important unconventional details to note:
  - Pro Micro model: Make sure you’re using a Pro Micro that includes the extra pins (18 and 24) located near the middle of the board (see the link above for reference).
  - Space between pin 18 and 24 (near the middle of the board) is narrow, so you might need to manually trim the plastic in-between the two pins to make sure it fits, just make sure there is still enough plastic on one of the pin so the metal is not in contact with the other one, [see photo](./images/uni-pins.png). A bit hacky but this is the simplest way I found to make use of these additional pins in order to keep the board diodeless.
  - Pin headers: The PCB holes are narrower than standard and won’t fit most regular pins. I recommend using machined conical pin headers, which are thinner—such as [these](https://www.proto-advantage.com/store/datasheets/MPH100IMP40M-G-V-TH.pdf).
  - Controller orientation: Install the controller component-side up (most keyboards mount them face-down). Also, be aware that the outermost top pins are used—which is different from the typical setup.
    
## Case

Smallcat has a no-screw case. The base of the case is 1mm larger than the PCB, which allows
for it to slide right in without the need for screws to hold it. I've placed 
little bumptons under the PCB in order for the pins to not sit directly against 
the case.

Note: the case currently is only available for the split version.

![case](./images/case.png)

## Keymap 

![keymap](https://github.com/smallwat3r/qmk-keymap/blob/main/images/keymap.png)

## QMK firmware

I maintain my own [QMK keymap](https://github.com/smallwat3r/qmk-keymap), from where you can 
find my QMK configuration and keymap for the Smallcat. It also contains a ready to use UF2
file with my QMK keymap flashed.

![lila](./images/lila.png)
