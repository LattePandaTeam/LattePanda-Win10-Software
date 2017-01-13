# LattePanda-BIOS Beta
----------------
### What's new:
In LattePanda v1.1, we put the auto-boot switch inside the BIOS setting.

Contains the following:

- LattePanda default BIOS Beta
- LattePanda auto power on BIOS Beta
- LattePanda v1.1 default BIOS Beta

The difference between three BIOS

For the LattePanda factory setting, press the power button after connecting the power cable to the board. However in most embeded usage, the system requires an auto startup feature after plugin the power adapter. So we customize the "auto power on BIOS".
And in LattePanda v1.1, we made some changes in the new BIOS. Such as we lock some items may cause the LP died or no output, and we embed auto-power switch in the BIOS. So no need to flash it anymore.

Note: LattePanda v1.1 default BIOS Beta can only use in LattePanda v1.1 which is using Z8350 CPU. 
You can distinguishing between both by the stick on the side of the board.  

### Disclaimer:   

Please note that this is a beta version of the Bios which is still undergoing final testing before its official release.  This version is test-only，and is not covered under your warranty. Before you reflash the bios, please ensure that you have saved the Windows product key code and you have an SPI chip programmer to reflash the bios at hardware level.  
  
### How to switch on/off the Auto-boot function in LP v1.1:
1.	Press [Esc] or [Del] once just boot up the system to enter the BIOS
2.	Go into Boot->Machine Status AC/Battery In
3.	Change it to Power On/Power Off

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
