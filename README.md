# buildroot-meshtastic

[Buildroot](https://buildroot.org/) packaging for Meshtastic and dependencies.

Intended for use with embedded Linux devices:
- [LuckFox Pico Series](https://wiki.luckfox.com/luckfox-pico/luckfox-pico-quick-start/)
- [Milk-V Duo Series](https://milkv.io/docs/duo/overview)
- [Sipeed LicheeRV Nano](https://wiki.sipeed.com/hardware/en/lichee/RV_Nano/1_intro.html)
- [Raspberry Pi](https://www.raspberrypi.com/documentation/computers/raspberry-pi.html)

See [docs/boards](/docs/boards.md) for additional details.

Should work with other devices supported by Buildroot as well.

---

## Usage

Prebuilt images are provided in the [`Actions`](https://github.com/buildroot-meshtastic/buildroot-meshtastic/actions/) tab.

Default credentials: `root` : `large4cats`

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

The following packages are included by default:

| Package                                                                     | Description                                  |
| --------------------------------------------------------------------------- | -------------------------------------------- |
| [`meta-cli-tools`](/package/meta-cli-tools)                                 | Meta-Package for installing common CLI tools |
| [`meshtasticd`](/package/meshtasticd)                                       | Meshtastic 'native-linux' daemon             |
| [`meshtasticd-web`](/package/meshtasticd-web)                               | `meshtasticd` web server                     |
| [`python-meshtastic`](/package/python-meshtastic)                           | Meshtastic python library                    |

See [docs/packages](/docs/packages.md) for additional details including dependencies and optional packages (BBS's, etc)

---

### References
- [Keeping customizations outside of Buildroot](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)
