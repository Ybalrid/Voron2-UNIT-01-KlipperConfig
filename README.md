# Voron2 UNIT-01 configuration

This is the configuration files for *my* specific Voron2 build. Putting it out there for reference, and backup.

The machine was built from an LDO v2.4 350 Rev C kit. But using an Orange Pi 3 LTS as the Klipper host. 
Instead of using the BTT touchscreen, I use one from waveshare + flat ribbon HDMI and USB cables.


## Non stock mods

Here's a list of mods that *impact the operation of the machine* (require config changes) installed on my machine:

- Nevermore Activated Carbon Filter
- Decontaminator (purge bucket and nozzle brush) installed on the left bed beam
- Voron TAP
- Rainbow Barf (Added a 750Ohm resistor in the data line before the rainbow barf PCB to fix signaling issues)
- Chamber Thermistor
- Ellis' Bed Fans
- BTT KNOMI

Not installed on the machine all the time, I have 2 ADXL tools in this config:

- A Raspberry Pi Pico with Klipper 11 flashed on it
- Provok3D Nozzle ADXL

Nowadays I use the nozzle one when I want to do resonance testing.

I have a Logitech C615 webcam installed inside my chamber. 
I have re-shelled the PCB of the webcam inside a custom 3d pritned part, but I am not happy enough with it to share it (just yet)
