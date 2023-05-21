# Voron2 UNIT-01 configuration

This is the configuration files for *my* specific Voron2 build. Putting it out there for reference, and backup.

It is a 350 machine, has a klicky probe attached somewhere on the right of the gantry (for now at least, it's slightly annoying sometimes. Thinking about TAP right now)

Z endstop is on the right, and a large decontaminator purge bucket and brush is on the left.

## Required plugins 

- **[klipper_z_calibration](https://github.com/protoloft/klipper_z_calibration)** Uses Klicky probe and the stock Voron 2 Z endstop switch to measure the distance between klicky and the tip of the nozzle. This allows to not have to set a Z offset by hand.