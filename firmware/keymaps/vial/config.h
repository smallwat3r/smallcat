/* SPDX-License-Identifier: GPL-2.0-or-later */

#pragma once

#define DYNAMIC_KEYMAP_LAYER_COUNT 10
#define VIAL_TAP_DANCE_ENTRIES 25
#define VIAL_COMBO_ENTRIES 50
#define DYNAMIC_KEYMAP_MACRO_COUNT 30

#define VIAL_KEYBOARD_UID {0xDA, 0x2A, 0xFA, 0x9D, 0x66, 0xE4, 0x31, 0x52}
#define VIAL_UNLOCK_COMBO_ROWS { 0, 1 }
#define VIAL_UNLOCK_COMBO_COLS { 1, 4 }

/* make use of the mounted WS2812 led from the Waveshare RP2040-zero */
#ifdef RGBLIGHT_ENABLE
#    define RGBLIGHT_LED_COUNT 1
#    define RGBLIGHT_SPLIT
#    define RGBLIGHT_DEFAULT_HUE 110
#    define RGBLIGHT_LIMIT_VAL 10
#    define RGBLIGHT_SLEEP
#    define RGBLIGHT_LAYERS
#    define RGBLIGHT_HUE_STEP 20
#    define WS2812_DI_PIN GP16
#endif
