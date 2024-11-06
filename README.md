# buildroot-meshtastic

Status: WIP! Compiles correctly and runs on SiPeed LicheeRV Nano with musl.
    Not yet tested with real radio hardware.

[Buildroot](https://buildroot.org/) packaging for Meshtastic and dependencies

Intended for use with embedded linux devices:
- [Sipeed LicheeRV Nano](https://wiki.sipeed.com/hardware/en/lichee/RV_Nano/1_intro.html)
    - Primary testing target currently
- [LuckFox Pico](https://wiki.luckfox.com/luckfox-pico/luckfox-pico-quick-start/)
- [Raspberry Pi Zero series](https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#zero-series)

Should work with other devices supported by buildroot as well.

---

## Usage

1. Clone the Buildroot repository
2. Clone this repository into the `external/` directory
3. Enable the packages in the Buildroot "external" menuconfig
    ```sh
    cd buildroot
    make BR2_EXTERNAL=path_to_external/buildroot-meshtastic menuconfig
    ```
4. Build the image
    ```sh
    cd buildroot
    make
    ```

---

# What's Included?

## Packages

| Package             | Description                                  |
| ------------------- | -------------------------------------------- |
| `meshtasticd`       | Meshtastic 'native-linux' daemon             |
| `python-meshtastic` | Meshtastic python library (untested/revisit) |

## Dependencies

| Package                   | Description                      |
| ------------------------- | -------------------------------- |
| `host-compat-python-pip`  | host-dep for multiple packages   |
| `host-compat-poetry-core` | host-dep for multiple packages   |
| `host-python-click-hack`  | dep for `host-python-platformio` |
| `host-python-tabulate`    | dep for `host-python-platformio` |
| `host-python-platformio`  | host-dep for `meshtasticd`       |
| `python-dotmap`           | dep for `python-meshtastic`      |
| `python-tabulate`         | dep for `python-meshtastic`      |
| `python-pypubsub`         | dep for `python-meshtastic`      |
| `python-print-color`      | dep for `python-meshtastic`      |

### Vendor-specific Dependencies

| Package      | Description                                                    |
| ------------ | -------------------------------------------------------------- |
| `cvi-pinmux` | Used for mapping pins on CVI platforms (LicheeRV / Milk-V Duo) |

---

### References
- [Keeping customizations outside of Buildroot](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)
