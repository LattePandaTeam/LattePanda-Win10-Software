## EC Firmware

The EC (Embedded Controller) firmware controls two things:
**whether the board boots automatically when power is connected**, and
**whether the onboard MCU (ATmega32U4) is powered in each system state**.

Three firmware variants are available. They differ only in behavior — the hardware and the flashing procedure are identical, and you can switch between variants at any time by re-flashing.

## Variant Overview

|                                        |    disable_auto_power_on    |    enable_auto_power_on    |       enable_mcu_autopwr       |
| -------------------------------------- | :-------------------------: | :------------------------: | :----------------------------: |
| Firmware file                          | `S70KR310A-VD-poweroff.bin` | `S70KR310A-VE-poweron.bin` | `S70KR310A-VF-mcu-autopwr.bin` |
| Boots automatically on power connected |              ❌              |             ✅              |               ❌                |
| MCU powered while system is off        |              ✅              |             ✅              |               ❌                |
| MCU powered in sleep                   |              ✅              |             ✅              |               ✅                |
| MCU powered while running              |              ✅              |             ✅              |               ✅                |

## Flashing

- Format your USB drive to **FAT32** format.
- Extract the EC files and copy them to the **root directory** of the USB flash drive.
- Insert the USB drive into LattePanda, and turn on LattePanda. (If you created the USB installation media on LattePanda, please restart the LattePanda.)
- Press `Del` key continuously to enter into BIOS Setup Menu.
- Locate `Save & Exit → Boot Override`. In the boot override menu, select the device that begins with "UEFI OS", e.g. `UEFI OS(Generic MassStorageClass)`.
- Then press `Enter` key, to enter into the EFI shell. Then **do not press any key** to let the countdown end.
- After the countdown, EC firmware refresh will start automatically in the ITE Flash Utility Version UI.

- After about 1 minutes, the message **`Update EC Rom Successfully!`** will be on the screen, which indicates that EC firmware refresh is completed.
- Gently press the power button to turn off the LattePanda, unplug the USB drive, and disconnect all power supplies.
- Wait about 30 seconds, then reconnect the power supply and press the power button to turn on the LattePanda.

⚠️ **Warning**
- Keep the power adapter connected during the whole update. Interrupting an EC flash can brick the board.
- Flash only the EC firmware that matches your board (LattePanda Alpha KR310 with 8200Y processor). Flashing EC firmware from another model can render the board unbootable.