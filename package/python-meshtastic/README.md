# python-meshtastic
Meshtastic CLI

## Dependencies

| Package                          | Recipe Source                                  |  Notes                                      |
| -------------------------------- | ---------------------------------------------- | ------------------------------------------- |
| `host-python-poetry-core`        | [buildroot >=2024.05][br_python-poetry-core]   | Added in buildroot `2024.05.x`              |
| `host-compat-python-poetry-core` | [buildroot-meshtastic][ext_python-poetry-core] | Backport for buildroot `<2024.05.x`         |
| `python-requests`                | [buildroot][br_python-requests]                |                                             |
| `python-protobuf`                | [buildroot][br_python-protobuf]                |                                             |
| `python-serial`                  | [buildroot][br_python-serial]                  |                                             |
| `python-pexpect`                 | [buildroot][br_python-pexpect]                 |                                             |
| `python-pyqrcode`                | [buildroot][br_python-pyqrcode]                |                                             |
| `python-pyyaml`                  | [buildroot][br_python-pyyaml]                  |                                             |
| `python-webencodings`            | [buildroot][br_python-webencodings]            |                                             |
| `python-pyparsing`               | [buildroot][br_python-pyparsing]               |                                             |
| `python-bleak`                   | [buildroot][br_python-bleak]                   |                                             |
| `python-dotmap`                  | [buildroot-meshtastic][ext_python-dotmap]      |                                             |
| `python-tabulate`                | [buildroot-meshtastic][ext_python-tabulate]    |                                             |
| `python-pypubsub`                | [buildroot-meshtastic][ext_python-pypubsub]    |                                             |
| `python-print-color`             | [buildroot-meshtastic][ext_python-print-color] |                                             |


[br_python-poetry-core]: https://github.com/buildroot/buildroot/tree/master/package/python-poetry-core
[br_python-requests]: https://github.com/buildroot/buildroot/tree/master/package/python-requests
[br_python-protobuf]: https://github.com/buildroot/buildroot/tree/master/package/python-protobuf
[br_python-serial]: https://github.com/buildroot/buildroot/tree/master/package/python-serial
[br_python-pexpect]: https://github.com/buildroot/buildroot/tree/master/package/python-pexpect
[br_python-pyqrcode]: https://github.com/buildroot/buildroot/tree/master/package/python-pyqrcode
[br_python-pyyaml]: https://github.com/buildroot/buildroot/tree/master/package/python-pyyaml
[br_python-webencodings]: https://github.com/buildroot/buildroot/tree/master/package/python-webencodings
[br_python-pyparsing]: https://github.com/buildroot/buildroot/tree/master/package/python-pyparsing
[br_python-bleak]: https://github.com/buildroot/buildroot/tree/master/package/python-bleak

[ext_python-poetry-core]: /package/compat-python-poetry-core
[ext_python-dotmap]: /package/python-dotmap
[ext_python-tabulate]: /package/python-tabulate
[ext_python-pypubsub]: /package/python-pypubsub
[ext_python-print-color]: /package/python-print-color
