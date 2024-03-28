# LP-EC-WTADLC1R210_FLASHUPDATE2

This version of the EC firmware allows the Arduino pins and 5V Pin Headers on the LattePanda Sigma to be continuously powered.

**NOTE:** 

It needs to be paired with the following BIOS settings: 

1. *BIOS Setup -> Advanced -> Power Management -> MCU Power Control -> Enabled* 

2. *BIOS Setup -> Advanced -> Power Management -> Always On 5V Pin Header -> Enabled*

This setup ensures that: as long as the LattePanda Sigma is connected to a power source, the Arduino pins and 5V Pin Headers will be powered, regardless of whether the device is switched on or off.



# Update Tutorial

#### **Preparation:**

1． LattePanda board

2． USB flash Drive (Formatted as **FAT32**)

3． EC firmware

 

#### **Instructions:**

1. Unzip the EC firmware and copy all files under "LP-EC-WTADLC1R210_FLASHUPDATE2" to the **root directory** of your USB drive;

![img](http://docs.lattepanda.com/assets/images/Sigma/Sigma_EC_firmware.webp) 



2. Insert the USB flash drive and start the system;

3. Continuously press **"F7"** and choose the USB flash drive as your boot option;

![img](http://docs.lattepanda.com/assets/images/Sigma/Select_Boot_Option.webp) 



4. The EC firmware will start to update automatically.
5. Wait for the update to finish. The system will automatically shut down. Upon pressing the power button, you will be able to keep the MCU power and 5V pin headers power continuously on.



This concludes our tutorial. Hope you've found it helpful and good luck with your future projects!

 
