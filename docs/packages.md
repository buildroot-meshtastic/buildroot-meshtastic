# Bundled Packages

## Packages

| Package                                                                     | Description                                  |
| --------------------------------------------------------------------------- | -------------------------------------------- |
| [`meta-cli-tools`](/package/meta-cli-tools)                                 | Meta-Package for installing common CLI tools |
| [`meshtasticd`](/package/meshtasticd)                                       | Meshtastic 'native-linux' daemon             |
| [`meshtasticd-web`](/package/meshtasticd-web)                               | `meshtasticd` web server                     |
| [`python-meshtastic`](/package/python-meshtastic)                           | Meshtastic python library                    |
| [`python-meshing-around`](/package/python-meshing-around)                   | BBS / Bot for meshtastic                     |
| [`python-meshtastic-channel-link`](/package/python-meshtastic-channel-link) | Radio-Bridging Bot for Meshtastic            |
| [`python-meshtastic-tc2-bbs`](/package/python-meshtastic-tc2-bbs)           | TheCommsChannel (TC2) Meshtastic BBS         |

## Dependencies

| Package                                                           | Description                         |
| ----------------------------------------------------------------- | ----------------------------------- |
| [`host-compat-python-pip`](/package/compat-python-pip)            | host-dep for multiple packages      |
| [`host-compat-poetry-core`](/package/compat-python-poetry-core)   | host-dep for multiple packages      |
| [`host-compat-python-click`](/package/compat-python-click)        | dep for `host-python-platformio`    |
| [`host-python-tabulate`](/package/python-tabulate)                | dep for `host-python-platformio`    |
| [`host-python-platformio`](/package/python-platformio)            | host-dep for `meshtasticd`          |
| [`liborcania`](/package/liborcania)                               | dep for `meshtasticd-web`           |
| [`libyder`](/package/libyder)                                     | dep for `meshtasticd-web`           |
| [`libulfius`](/package/libulfius)                                 | dep for `meshtasticd-web`           |
| [`python-dotmap`](/package/python-dotmap)                         | dep for `python-meshtastic`         |
| [`python-tabulate`](/package/python-tabulate)                     | dep for `python-meshtastic`         |
| [`python-pypubsub`](/package/python-pypubsub)                     | dep for `python-meshtastic`         |
| [`python-print-color`](/package/python-print-color)               | dep for `python-meshtastic`         |
| [`python-geographiclib`](/package/python-geographiclib)           | dep for `python-geopy`              |
| [`python-geopy`](/package/python-geopy)                           | dep for `python-meshing-around`     |
| [`python-ephem`](/package/python-ephem)                           | dep for `python-meshing-around`     |
| [`python-maidenhead`](/package/python-maidenhead)                 | dep for `python-meshing-around`     |
| [`python-openmeteo-sdk`](/package/python-openmeteo-sdk)           | dep for `python-openmeteo-requests` |
| [`python-openmeteo-requests`](/package/python-openmeteo-requests) | dep for `python-meshing-around`     |

### Vendor-specific Dependencies

| Package                                           | Description                                                             |
| ------------------------------------------------- | ----------------------------------------------------------------------- |
| [`lichee-cvi-pinmux`](/package/lichee-cvi-pinmux) | Used for mapping pins on LicheeRV Nano, already included on Milk-V Duo. |
