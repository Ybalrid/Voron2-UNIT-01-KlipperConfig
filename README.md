# Voron2 UNIT-01 configuration

These are the configuration files for *my* specific Voron2 build. Putting it out there for reference and backup.

The machine was built from an LDO v2.4 350 Rev C kit. But using an Orange Pi 3 LTS as the Klipper host. 
Instead of using the BTT touchscreen, I use one from Waveshare + flat ribbon HDMI and USB cables.

## Non-stock mods

Here's a list of mods that *impact the operation of the machine* (require config changes) installed on my machine:

- Nevermore Activated Carbon Filter
- Decontaminator (purge bucket and nozzle brush) installed on the left bed beam
- Voron TAP
- Rainbow Barf (Added a 750Ohm resistor in the data line before the rainbow barf PCB to fix signaling issues)
- Chamber Thermistor
- Ellis' Bed Fans
- BTT KNOMI running [this](https://github.com/Ybalrid/KNOMI-UNIT-01) customized firmware
- Galileo2 Extruder

Not installed on the machine all the time, I have 2 ADXL tools in this config:

- A Raspberry Pi Pico with Klipper 11 flashed on it
- Provok3D Nozzle ADXL

Nowadays, I use the nozzle one when I want to do resonance testing.

I have a Logitech C615 webcam installed inside my chamber. 
I have re-shelled the PCB of the webcam inside a custom 3d printed part, but I am not happy enough with it to share it (just yet)


## Mainsail

I run Mainsail on my Voron 2.4. The machine color scheme (and a few added stickers) references the Evangelion Unit-01 from Neon Genesis Evangelion. There are some custom CSS and pictures to apply *some* theming to the Mainsail UI, including a 7-segment font for some of the numerical indicators.

## Restoring configuration

I had one catastrophic failure of the Linux install inside this printer corrupting its filesystem making it not bootable anymore.

I have taken notes on how I got things back up and working.

### Backups

The actual configuration of the printer is this GIT repository. Alongside it, Moonraker keeps stats and settings inside a database. 

This database, I have a cron job take a daily backup into another folder in the home directory. This folder should be copied somewhere (my NAS).

### Basic OS install.

This machine runs on an Orange Pi 3 LTS. The OS I use is Armbian, specifically [*whatever is the current minimal Debian based version downloadable here*](https://www.armbian.com/orangepi3-lts/)

- Download the image
- Use a software like Balena Etcher to install it to the micro SD card
- Run the machine through first boot, you can plug a keyboard directly on the printer and use the built-in screen.
- Adjust networking configuration as needed.

### Klipper deployment

I use [KIAUH](https://github.com/dw-0/kiauh) and will just install via this means the following components:

- Klipper
- Moonraker
- Mainsail
- KlipperScreen
- Crowsnest
- Mobileraker companion

Then, the following klipper plugins, following their README

- [sonar](https://github.com/mainsail-crew/sonar)
- [KAMP](https://github.com/kyleisah/Klipper-Adaptive-Meshing-Purging)
- [led_effects](https://github.com/julianschill/klipper-led_effect)

### Install the klipper and moonraker old configurations

After setting up all of the abvoe, the last step is to get the configuration running. I shut down the klipper, moonraker, crowsnest and other related daemons manually first.

Then I clone this repository in the home directory.

Finally, in `~/printer_data` folder, I simply move away the config directory and symlink this repo in place

```
cd
cd printer_data
mv config old_config
ln -s /home/pi/Voron2-UNIT-01-KlipperConfig config
```

Then, I manually copy the saved moonraker database files inside `~/printer_data/database`. This restore mainsail settings, and a bunch of other stuff including the machine's history. 

Restarting everything got me back to exactly how things used to work. The `old_config` directory can be simply deleted. 
