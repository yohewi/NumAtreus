#include QMK_KEYBOARD_H

// Each layer gets a name for readability, which is then used in the keymap matrix below.
// The underscores don't mean anything - you can have a layer called STUFF or any other name.
// Layer names don't all need to be of the same length, obviously, and you can also skip them
// entirely and just use numbers.

enum layer_number {
  _QWERTY,
  _LOWER,
  _RAISE,
};

enum custom_keycodes {
  BASE = SAFE_RANGE,
  LOWER,
  RAISE,
};


const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

  /*
   *  q      w      e     r     t       ||     y      u     i     o     p
   *  a      s      d     f     g       ||     h      j     k     l    /
   *  z      x      c     v     b       ||     n      m     ,     ↑　　.　
   * esc    tab    ctl   lw   spc   bspc|| GRV   ent  RS    ←　　　↓　　→
   */

  [_QWERTY] = LAYOUT( /* Qwerty */
    KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,                      KC_Y,    KC_U,    KC_I,    KC_O,    KC_P    ,
    KC_A,    KC_S,    KC_D,    KC_F,    KC_G,                      KC_H,    KC_J,    KC_K,    KC_L,    KC_SLSH ,
    SFT_T(KC_Z),    KC_X,    KC_C,    KC_V,    KC_B,               KC_N,    KC_M,    KC_COMM, KC_UP,  SFT_T(KC_DOT) ,
    KC_LALT, KC_TAB, KC_LCTL,  MO(_LOWER), KC_SPC, KC_BSPC, LALT(KC_GRV), KC_ENT,  MO(_RAISE),  KC_LEFT, KC_DOWN, KC_RGHT ),


  /*
   *  1       2     3     4     5        ||       6     7      8     9    0
   *  GRV     [     ]    =       -       ||       \    SCLN   QUOT  SLSH
   *                                     ||       BSPC
   * TRANS  TRANS TRANS TRANS TRANS DEL  || TRANS TRANS  RS  SPC  TRNS TRNS
   */
  [_RAISE] = LAYOUT( /* [> RAISE <] */
    KC_1,    KC_2,    KC_3,    KC_4,    KC_5,                      KC_6,    KC_7,    KC_8,   KC_9, KC_0 ,
    KC_GRV,  KC_LBRC, KC_RBRC, KC_EQL, KC_MINS,                    KC_BSLS, KC_SCLN, KC_QUOT, KC_SLSH, KC_TRNS ,
    KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,                   KC_BSPC, KC_TRNS,   KC_TRNS,   KC_TRNS,   KC_TRNS ,
    KC_ESC,  KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_DEL,    KC_TRNS, KC_ENT,  KC_TRNS, KC_SPC,  KC_TRNS,   KC_TRNS ),

  /*
   * !      @     #    $     %        ||     ^    &    *     (    )
   *  F1    F2    F3   F4    F5       ||     F6    F7  MOW-UP MO-UP MOW-D
   *  F8    F9    F10  F11   F12      ||    RESET TRNS  MO-L MOB3 MO-R
   *  ESC   TRNS  TRNS TRNS SPC ENT  || TRNS MOB1 MOB2 MOW-L MO-D MOW-R
   */

  [_LOWER] = LAYOUT( /* [> LOWER <] */
    KC_EXLM, KC_AT,   KC_HASH, KC_DLR,  KC_PERC,                   KC_CIRC, KC_AMPR,  KC_ASTR, KC_LPRN, KC_RPRN  ,
    KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,                     KC_F6,   KC_F7,    KC_WH_U,  KC_MS_U, KC_WH_D ,
    KC_F8,  KC_F9,  KC_F10,   KC_F11,   KC_F12,                    RESET,  KC_TRNS,   KC_MS_L, KC_BTN3, KC_MS_R ,
    KC_ESC, KC_TRNS,  KC_TRNS, KC_TRNS, KC_SPC, KC_ENT, KC_TRNS, KC_BTN1, KC_BTN2,  KC_WH_L, KC_MS_D,  KC_WH_R )
};
