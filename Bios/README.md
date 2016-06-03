# LattePanda-BIOS
----------------

Contains the following:

- LattePanda default BIOS
- LattePanda auto power on BIOS

The difference between two BIOS

For the LattePanda factory setting, press the power button after connecting the power cable to the board. However in most embeded usage, the system requires an auto startup feature after plugin the power adapter. So we customize the "auto power on BIOS".


### How to refresh the LattePanda BIOS:

1. Format your U-disk to FAT32
2. Copy the right BIOS files directly to root of the USB flash disk
3. Plug the U-disk in USB host
4. Plugin the MicroUSB cable and power on the system
5. Wait the refreshing the BIOS automatically until returning "fs1:\>" (Check the “![Refresh BIOS successfully.jpg](http://www.lattepanda.com/wp-content/uploads/2016/04/Refresh-BIOS-successfully.jpg)”)
6. Unplug the U-disk!
7. Restart the system via pressing the reset button or "Ctrl+Alt+Del". Then finish refreshing.
Note: make sure that remove the U-disk before restarting the system!

Checkout the [LattePanda official docs for more tutorials](http://www.lattepanda.com/docs) 

#### To download, please click "Download ZIP"

Follow us on Twitter for updates and more information: https://twitter.com/LattePandaCN

Designed by Cain, Kelvin and Lauren for LattePanda
