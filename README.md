# buildroot-meshtastic

[Buildroot](https://buildroot.org/) packaging for Meshtastic and dependencies.

Intended for use with embedded Linux devices:
- [LuckFox Pico Series](https://wiki.luckfox.com/luckfox-pico/luckfox-pico-quick-start/)
    - Compilation working with [uClibc-ng](https://uclibc-ng.org/)
- [Sipeed LicheeRV Nano](https://wiki.sipeed.com/hardware/en/lichee/RV_Nano/1_intro.html)
    - Primary testing target currently, working!
    - Compilation working with [musl](https://musl.libc.org/)
- [Milk-V Duo Series](https://milkv.io/docs/duo/overview)
    - Untested
    - Compilation working with [musl](https://musl.libc.org/)
- [Raspberry Pi Zero series](https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#zero-series)
    - Untested
    - Compilation working with [glibc](https://sourceware.org/glibc/)

Should work with other devices supported by Buildroot as well.

---

## Usage

Prebuilt images are provided in the `Actions` tab.

## Build it yourself!

1. Clone the Buildroot repository for the target device
2. Clone *this* repository into the `external/` directory
3. Enable the packages in the Buildroot "external" menuconfig
    ```sh
    cd buildroot
    make BR2_EXTERNAL=/absolute/path_to/external/ menuconfig
    ```
4. Build the image
    ```sh
    cd buildroot
    make
    ```

---

# What's Included?

## Packages

| Package                 | Description                                  |
| ----------------------- | -------------------------------------------- |
| `meta-cli-tools`        | Meta-Package for installing common CLI tools |
| `meshtasticd`           | Meshtastic 'native-linux' daemon             |
| `meshtasticd-web`       | `meshtasticd` web server                     |
| `python-meshtastic`     | Meshtastic python library (untested/revisit) |
| `python-meshing-around` | BBS / Bot for meshtastic                     |

## Dependencies

| Package                     | Description                         |
| --------------------------- | ----------------------------------- |
| `host-compat-python-pip`    | host-dep for multiple packages      |
| `host-compat-poetry-core`   | host-dep for multiple packages      |
| `host-compat-python-click`  | dep for `host-python-platformio`    |
| `host-python-tabulate`      | dep for `host-python-platformio`    |
| `host-python-platformio`    | host-dep for `meshtasticd`          |
| `liborcania`                | dep for `meshtasticd-web`           |
| `libyder`                   | dep for `meshtasticd-web`           |
| `libulfius`                 | dep for `meshtasticd-web`           |
| `python-dotmap`             | dep for `python-meshtastic`         |
| `python-tabulate`           | dep for `python-meshtastic`         |
| `python-pypubsub`           | dep for `python-meshtastic`         |
| `python-print-color`        | dep for `python-meshtastic`         |
| `python-geographiclib`      | dep for `python-geopy`              |
| `python-geopy`              | dep for `python-meshing-around`     |
| `python-ephem`              | dep for `python-meshing-around`     |
| `python-maidenhead`         | dep for `python-meshing-around`     |
| `python-openmeteo-sdk`      | dep for `python-openmeteo-requests` |
| `python-openmeteo-requests` | dep for `python-meshing-around`     |

### Vendor-specific Dependencies

| Package             | Description                                                             |
| ------------------- | ----------------------------------------------------------------------- |
| `lichee-cvi-pinmux` | Used for mapping pins on LicheeRV Nano, already included on Milk-V Duo. |

---

### References
- [Keeping customizations outside of Buildroot](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)
