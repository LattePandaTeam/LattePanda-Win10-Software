## How to update the BIOS firmware？

- Format your USB drive to **FAT32** format.
- Extract the BIOS files and copy them to the **root directory** of the USB flash drive.
- Insert the USB drive into LattePanda, and turn on LattePanda. (If you created the USB installation media on LattePanda, please restart the LattePanda.)
- Press `Del` key continuously to enter into BIOS Setup Menu.
- Locate `Save & Exit → Boot Override`. In the boot override menu, select the device that begins with "UEFI OS", e.g. `UEFI OS(Generic MassStorageClass)`.
- Then press `Enter` key, to enter into the EFI shell. Then **do not press any key** to let the countdown end.
- After the countdown, BIOS firmware refresh will start automatically.

- After about 1 minutes, the green font message **`FPT Operation Successful`** will be on the screen, which indicates that BIOS firmware refresh is completed.
- Gently press the power button to turn off the LattePanda, unplug the USB drive, and disconnect all power supplies.
- Wait about 30 seconds, then reconnect the power supply and press the power button to turn on the LattePanda. The first boot may take longer than usual, so please be patient.

You can also refer to this illustrated tutorial: https://docs.lattepanda.com/content/3rd_delta_edition/bios_update_BIOS_firmware/

⚠️ **Warning**

- Keep the power adapter connected during the whole update. Interrupting an BIOS flash can brick the board.
- Flash only the BIOS firmware that matches your board (LattePanda Alpha KR310 with 8200Y processor). Flashing BIOS firmware from another model can render the board unbootable.