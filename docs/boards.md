# Supported Boards

The following boards are "officially" supported by `buildroot-meshtastic` and built with GitHub Actions.

If you've tested a board and confirmed it's functioning, please submit a PR or an Issue!

## Luckfox Pico

SDK: [buildroot-meshtastic/luckfox-pico](https://github.com/buildroot-meshtastic/luckfox-pico)

Buildroot version: `2023.02.6`

Toolchain: `uClibc-ng` -- `arm-rockchip830-linux-uclibcgnueabihf` Bundled with SDK

| Board           | Boot Medium | Tested? | Notes |
| --------------- | ----------- | ------- | ----- |
| Pico            | SD Card     | ✅      |       |
| Pico Mini A     | SD Card     | ✅      |       |
| ~~Pico Mini B~~ | SPI-NAND    | ⚠️      | `Mini B` is not built. SPI-NAND conflicts with `meshtasticd`. |
| Pico Plus       | SD Card     | ❌      |       |
| Pico Pro        | SD Card     | ❌      |       |
| Pico Max        | SD Card     | ❌      |       |
| Pico Ultra      | EMMC        | ❌      |       |
| Pico Ultra W    | EMMC        | ❌      |       |

#### Notes
- Additional info at [noon92/femtofox](https://github.com/noon92/femtofox)

## Sipeed LicheeRV

SDK: [buildroot-meshtastic/LicheeRV-Nano-Build](https://github.com/buildroot-meshtastic/LicheeRV-Nano-Build)

Buildroot version: `2023.11.2`

Toolchain: `musl` [buildroot-meshtastic/sophgo-host-tools](https://github.com/buildroot-meshtastic/sophgo-host-tools)

| Board           | Boot Medium | Tested? | Notes |
| --------------- | ----------- | ------- | ----- |
| LicheeRV Nano   | SD Card     | ✅      |       |

#### Notes
- LicheeRV Nano has a MIPI display connector, interesting for designs interegrating a screen.
- LicheeRV Nano has two SPI buses available.
    - Interesting potential for Dual-Radio or Radio + Screen designs.


## Milk-V Duo

SDK: [buildroot-meshtastic/duo-buildroot-sdk-v2](https://github.com/buildroot-meshtastic/duo-buildroot-sdk-v2)

Buildroot version: `2024.02.3`

Toolchain: `musl` [buildroot-meshtastic/milkv-duo-host-tools](https://github.com/buildroot-meshtastic/milkv-duo-host-tools)

| Board           | Boot Medium | Tested? | Notes |
| --------------- | ----------- | ------- | ----- |
| Duo 64M         | SD Card     | ✅      |       |
| Duo 256M        | SD Card     | ✅      |       |
| Duo S           | SD Card     | ❌      |       |
| Duo S           | EMMC        | ❌      |       |

#### Notes
- Milk-V Duo has two SPI buses available.
    - Interesting potential for Dual-Radio or Radio + Screen designs.

## Raspberry Pi

SDK: [buildroot/buildroot](https://github.com/buildroot/buildroot)

Buildroot version: `2024.08.x` branch

Toolchain: `glibc` buildroot default

| Board           | Boot Medium | Tested? | Notes |
| --------------- | ----------- | ------- | ----- |
| Pi Zero         | SD Card     | ❌      |       |
| Pi Zero W       | SD Card     | ❌      |       |
| Pi Zero 2 W     | SD Card     | ❌      |       |
| Pi 1            | SD Card     | ❌      |       |
| Pi 2            | SD Card     | ❌      |       |
| Pi 3 (armhf)    | SD Card     | ❌      |       |
| Pi 3 (aarch64)  | SD Card     | ❌      |       |

#### Notes
- We are currently targeting Raspberry Pis with 1GB RAM or less.
