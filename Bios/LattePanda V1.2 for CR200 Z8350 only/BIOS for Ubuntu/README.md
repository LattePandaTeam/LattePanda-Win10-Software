# LattePanda_BIOS_For_Ubuntu

Note: This BIOS is only for all **CR200 z8350**. Find your sticky paper on LattePanda board to check the version. 

![z8350 mark](https://i.imgur.com/w1Ys5eG.png)

### How to switch on/off the Auto-boot function in LP v1.2:

1. Press [Esc] or [Del] once just boot up the system to enter the BIOS
2. Go into Boot->Machine Status AC/Battery In
3. Change it to Power On/Power Off

Contains the following:

- LattePanda v1.2 default BIOS Beta

### How to refresh the LattePanda BIOS:

1. Format your USB flash disk to FAT32

2. Copy the right BIOS files directly to root of the USB flash disk

3. Plug the USB flash disk in USB host

4. Plugin the MicroUSB cable and power on the system

5. Wait the refreshing the BIOS automatically until returning "fs1:\>"![Refresh BIOS successfully.jpg](http://www.lattepanda.com/wp-content/uploads/2016/04/Refresh-BIOS-successfully.jpg)

6. Unplug the USB flash disk!

7. Restart the system via pressing the reset button or "Ctrl+Alt+Del". Then finish refreshing.

   **Note:**make sure that remove the USB flash disk before restarting the system!

Checkout the [LattePanda official docs for more tutorials](http://docs.lattepanda.com/) 



### Disclaimer:

Please note that this is a **beta** version of the bios which is still undergoing final testing before its official release.  
This version is **test-only**, so **please confirm with us** before you reflash the bios.  
**Reflashing without notifying us can put your board in a state of no return and void your warranty.**  
Ensure that you have saved the Windows product key code and you have an SPI chip programmer to reflash the bios at hardware level  

Checkout the [LattePanda official docs for more tutorials](http://www.lattepanda.com/docs) 



### FAQ

If you have any question or failed to refresh the bios, please check out this official forum thread to find more details (contributed by @flyingpoutine)

http://www.lattepanda.com/forum/viewtopic.php?f=10&t=1306&sid=4c16e0430ee1a46c2ebba837383c3930

And feel free to post your questions there. 



### Changelog

#### Fixed

- Mouse exception display 
- MIPI&HDMI audio output
- Suspend function
- Unstable Bluetooth function



#### To download, please click "Download ZIP"

Follow us on official Facebook page @LattePandaCN and Twitter @LattePandaCN

Designed by Cain, Kelvin and Lauren for LattePanda