# Change log

## Deck I: 2018-7-28

* QMK is the default firmware for all boards now.

## Mark 3.7: 2017-6-29

* Manually bending middle switch pins on Alps is no longer necessary.
* Spacer layer is split into three pieces to be less wasteful with materials.

## Mark 3.6: 2016-3-14

* TMK is the default firmware.
* New layout with arrows on the fn layer.
* PCB is now label-side up by default.

## Mark 3.5: 2015-6-23

* Change to Matias switches.

## NX-03: 2015-05-08

* Matias Clicky switches.
* Alps-compatible switch plate.

## Mark 3.1: 2014-11-25

* [Second revision of circuit board](http://gerblook.org/pcb/jweM8BcTbgKCL4zsj8tEYj).
* Arrows on L2 shifted over one column.
* Circuit board license changed to match the rest of the Atreus project.

The second revision of the circuit board exposes the reset pin,
removing the need for hookup wire described below. It also removes
[the need to cut a notch in the circuit board](https://www.flickr.com/photos/technomancy/15862732742)
to allow the USB connector more clearance.

The layout changed slightly by shifting the arrow keys on L2 over one
column so they can be hit from the normal position without the pinky key.

## Mark 3: 2014-10-30

* Initial [board design](http://gerblook.org/pcb/zqMY66AEsKz3xehSrdoDV6) in KiCAD + Racket.
* Assembly guide updated to include wood finishing.
* Cable hole in case spacer has rounded edges.
* New layout: multidvorak.
* Switch to Pololu A-Star Micro controller. (also USB mini->micro)

A
[circuit board was designed in KiCAD with the switch placement logic written in Racket](http://technomancy.us/176). The
first revision of the circuit board does not expose the reset pin, so
hookup wire is needed to provide a backup reset mechanism once the board
is fully assembled. The firmware contains a reset mechanism, but if
bugs in the firmware prevent it from being activated, the back case
can be removed and the hookup wires can be connected twice in a second
to initiate a reset.

The new design replaced the Teensy 2 microcontroller with the smaller
[A-Star Micro](http://www.pololu.com/product/3101) which uses a USB
Micro connector instead of USB Mini.

The new multidvorak layout allows the firmware to support hardware
dvorak and software dvorak simultaneously. The edges of the cable hole
are rounded off to reduce strain on the cable.

## NX-02: 2014-08-05

* Matias Quiet Click switches.
* Teensy 3: ARM-based microcontroller.
* Orestes: firmware written in Forth.

An
[experimental prototype](https://www.flickr.com/photos/technomancy/14654421878)
using Matias Quiet Click switches and the ARM-based Teensy 3
controller. The Matias switch shape was supported by cutting the
notches out of each switch hole individually with a knife.

Porting the firmware to the ARM platform was accompanied by porting
[an implementation of Forth](https://github.com/technomancy/orestes/tree/teensy3)
and porting the firmware logic to that.

## Mark 2: 2014-04-22

* New OpenSCAD [case design](https://www.flickr.com/photos/technomancy/14719013574) by Constantine.
* New layouts: hardware dvorak, hardware colemak.
* Assembly guide.

The case was
[redesigned in OpenSCAD](https://github.com/technomancy/atreus/blob/master/case/openscad/atreus_case.scad)
to be easier to produce from mail-order laser cutting services. This
revision can be recognized by its use of eight screws instead of the
original seven. The cuts in the top plate around the switches are also
much closer to the switches themselves.
[A second independent build](http://geekhack.org/index.php?topic=57007.msg1292144)
was documented.

The assembly process is documented properly.

## Mark 1: 2014-04-01

* Custom Atreus firmware in C.
* Layout changes; new layer.

A
[custom Atreus-specific firmware codebase](https://github.com/technomancy/atreus-firmware)
was started. Digits were moved to a numpad arrangement and the L2
layer (function and arrow keys) was added. The first
[third-party build](http://blog.tarn-vedra.de/2014/04/reproducing-keyboard-science_1707.html)
was documented.

## NX-01: 2014-02-22

* [Initial prototype](https://www.flickr.com/photos/technomancy/12805226463)!
* Case hand-drawn in Inkscape.
* Teensy 2 microcontroller, hand-wired matrix.
* Uses TMK firmware.

This was the first Atreus,
[created solely for personal use](http://technomancy.us/173) and
meticulously hand-wired with a number of errors. Support for the
Atreus was
[added to the TMK firmware codebase](https://github.com/technomancy/tmk_keyboard/tree/atreus),
but power-saving bugs in TMK meant that it occasionally dropped key
presses on low-voltage laptops.
