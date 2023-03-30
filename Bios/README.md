# LattePanda-BIOS Beta
----------------

Contains the following:

- LattePanda v1.0 default BIOS Beta
- LattePanda v1.1 default BIOS Beta
- LattePanda v1.2 default BIOS Beta

**Note: LattePanda v1.1 default BIOS Beta can only use in LattePanda v1.1 which is using Z8350 CPU.And so on.**     
  
  
### How to switch on/off the Auto-boot function in LP v1.1/v1.2:
1.Press [Esc] or [Del] once just boot up the system to enter the BIOS  
2.Go into Boot->Machine Status AC/Battery In  
3.Change it to Power On/Power Off
  
  
### How to Figure out the verison of your lattePanda
You can distinguishing between both by the stick on the side of the board.  
S70CR110/S70CR100 Z8300 -> V1.0    
S70CR110 Z8350 -> V1.1   
S70CR200 Z8350 -> V1.2  
![Z8350 stick.png](/assets/images/8350-sticker.png)



### Disclaimer:   

Please note that this is a **beta** version of the bios which is still undergoing final testing before its official release.  
This version is **test-only**, so **please confirm with us** before you reflash the bios.  
**Reflashing without notifying us can put your board in a state of no return and void your warranty.**  
Ensure that you have saved the Windows product key code and you have an SPI chip programmer to reflash the bios at hardware level


### How to refresh the LattePanda BIOS:

1. Format your USB disk to FAT32 and change the drive name to "WINPE"
2. Copy the right BIOS files directly to root of the USB flash disk
3. Plug the U-disk in USB host
4. Plugin the MicroUSB cable and power on the system
5. Wait the refreshing the BIOS automatically until returning "fs1:\>" (Check the “![Refresh BIOS successfully.jpg](/assets/images/LP V1/V1_BIOS/Refresh-BIOS-successfully.jpg)”)
6. Unplug the U-disk!
7. Restart the system via pressing the reset button or "Ctrl+Alt+Del". Then finish refreshing.
  Note: make sure that remove the U-disk before restarting the system!

**If you have any problem in the process please check this video from Raducki Frédéric 
https://youtu.be/du1BuDCn1WQ
Thank Fred for the contribution of BIOS flashing tutorial video**


Checkout the [LattePanda official docs for more tutorials](http://www.lattepanda.com/docs) 

## FAQ

If you have any question or failed to refresh the bios, please check out this official forum thread to find more details (contributed by @flyingpoutine)

https://www.lattepanda.com/forum/topic/313292

And feel free to post your questions there. 



#### To download, please click "Download ZIP"

Follow us on official Facebook page @LattePandaCN and Twitter @LattePandaCN

Designed by Cain, Kelvin and Lauren for LattePanda
