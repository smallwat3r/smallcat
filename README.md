# Smallcat

A diodeless 26-key keyboard, featuring the purr-fect code reviewer, my cat, Lila.

This repo contains Gerber files, KiCad files, OpenSCAD cases, and links to QMK and Vial-QMK firmware for the Smallcat.

## Versions

The Smallcat comes as a **split** and as a **unibody**, which has two revisions.

| Version | KiCad project | Gerbers | Case |
|---------|---------------|---------|------|
| [Split](#split) | [`pcb/split`](./pcb/split) | [`gerber.zip`](./pcb/split/gerber.zip) | [`case/split`](./case/split) |
| [Unibody](#unibody) | [`pcb/uni`](./pcb/uni) | [`gerber.zip`](./pcb/uni/gerber.zip) | [`case/uni`](./case/uni) |
| [Unibody v2.0](#unibody-v20) | [`pcb/uni-v2`](./pcb/uni-v2) | [`gerber.zip`](./pcb/uni-v2/gerber.zip) | None yet |

All versions share the same column splay:

| Finger | Splay |
|--------|-------|
| Pinkie | 10°   |
| Ring   | 5°    |
| Middle | 2°    |

### Split

![Smallcat split](./assets/smallcat.jpeg)

| Component | Specification |
|-----------|---------------|
| Controller | 2x RP2040-Zero footprint ([example](https://www.waveshare.com/wiki/RP2040-Zero)) |
| Switches | 26 low profile Choc (soldered) |
| Diodes | None required |
| Connection | TRRS jack |

### Unibody

![Smallcat unibody](./assets/smallcat-uni.jpeg)

| Component | Specification |
|-----------|---------------|
| Controller | 1x RP2040 Pro Micro with 28 I/O pins ([example](https://www.aliexpress.com/i/1005006097129434.html)) |
| Switches | 26 low profile Choc (soldered) |
| Diodes | None required |

See the [build notes](#unibody-build-notes) before ordering parts.

### Unibody v2.0

![Smallcat unibody v2.0](./assets/smallcat-uni-v2.jpeg)

A more compact revision of the unibody. It uses the same controller, switches, pinout and firmware as the first one, and most of the [build notes](#unibody-build-notes) still apply.

What changed:

- **Closer together**: the two halves are pulled in towards each other and angled a little more, so your hands sit nearer the middle. The thumb keys also moved up slightly, closer to the bottom row.
- **Controller tucked in**: the controller is now tilted and squeezed in between the inner index keys, instead of sitting upright in the middle with empty board around it.
- **Less board**: the parts of the PCB that were doing nothing are gone, around the controller and between the thumb keys. It is about 5 mm narrower and 9% smaller overall.
- **Cleaner front**: the traces moved to the back, so the front is just Lila.
- **Normal pin headers work**: the controller holes are wider, so you no longer need the special machined pins. Standard headers fit, and the machined ones still do too.
- **Properly symmetrical**: the two halves are now exact mirrors of each other. The first unibody was off by a tenth of a millimetre here and there.
- **Two Lilas**: one on each half, facing outwards.

### Unibody build notes

The unibody boards have a few unconventional details.

Both revisions:

- **Pro Micro model**: Use a Pro Micro with extra pins (18 and 24) near the middle of the board.

- **Pin clearance**: The space between pins 18 and 24 is narrow. You may need to trim the plastic between them, just ensure enough remains so the metal contacts don't touch. [See photo](./assets/pins_uni.jpeg). This is a simple workaround to use the extra pins and keep the board diodeless.

- **Controller orientation**: Install component-side up (not face-down like most keyboards). This way the boot and reset buttons are accessible.

First unibody only:

- **Pin headers**: PCB holes are narrower than standard. Use machined conical pin headers like [these](https://www.proto-advantage.com/store/datasheets/MPH100IMP40M-G-V-TH.pdf).

## Case

Simple press-fit cases with no screws or hardware, for the split and the first unibody. The base is 1 mm larger than the PCB, allowing it to slide in snugly. You may need to trim some edges slightly to ensure a tight fit. Small bumpons under the PCB prevent the pins from resting directly on the case.

| Split | Uni |
|-------|-----|
| ![Split case](./assets/case_split.jpeg) | ![Unibody case](./assets/case_uni.jpeg) |

Ready-to-print STL files sit next to their OpenSCAD sources in [`case`](./case). To regenerate them after editing a source, with OpenSCAD installed:

```sh
make case
```

## Firmware

I maintain my own [QMK keymap](https://github.com/smallwat3r/qmk-keymap), which includes my keymap, configuration for the Smallcat, and a ready-to-flash UF2 file.

## Licence

Released under the [CERN Open Hardware Licence Version 2 - Permissive](./LICENSE).

![Lila](./assets/lila.jpeg)
