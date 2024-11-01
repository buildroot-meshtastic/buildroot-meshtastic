# buildroot-meshtastic

Status: WIP! Compiles correctly and runs on SiPeed LicheeRV Nano with musl.
    Not yet tested with real radio hardware.

[Buildroot](https://buildroot.org/) packaging for Meshtastic and dependencies

See https://buildroot.org/downloads/manual/manual.html#outside-br-custom

Intended for use with embedded linux devices:
- LuckFox Pico
- Sipeed LicheeRV Nano

Should work with other devices supported by buildroot as well.

---

## Usage

1. Clone the Buildroot repository
2. Clone this repository into the `external/` directory
3. Enable the package in the Buildroot configuration
    ```sh
    cd buildroot
    make BR2_EXTERNAL=path_to_external/buildroot-meshtastic menuconfig
    ```
