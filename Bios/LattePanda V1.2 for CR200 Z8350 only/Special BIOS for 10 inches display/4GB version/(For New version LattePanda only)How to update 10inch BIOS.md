### How to Update 10.1inch BIOS?

1. Format your USB drive to FAT32 and change the drive name to "WINPE";

2. Copy the right BIOS files directly to root of the USB drive;

   ![](https://www.lattepanda.com/wp-content/uploads/2021/01/Untitled.png)

   

3. Plug the U-drive in USB host and boot the system;

4. Press “ESC” and go into the BIOS setting page;

5. Navigate to “**Save & Exit**”, Select the “**UEFI: Built-in EFI Shell**” in Boot Override and press “Enter” ;

   ![](https://www.lattepanda.com/wp-content/uploads/2019/08/Alpha-BIOS-reflash01.jpg)

   

6. Wait few seconds until the page shows “Shell>”;

   ![](https://www.lattepanda.com/wp-content/uploads/2019/08/Alpha-BIOS-reflash02.jpg)

   

7. Input “ fsX:” then press “Enter” (X could be 1,2,3…);

8. Input “dir” then press “Enter” to check the file in the disk;

   ![](https://www.lattepanda.com/wp-content/uploads/2021/01/20210114165535.jpg)

   

9.  Now enter “fpt64.efi -f DF-BI-10-S70CR200-CC55F-209-A.BIN". You can also use the “Tab” key to fast choose. 

   Then press “Enter” ;**(The files' name could be different according to the BIOS type you choose)**

   ![](https://www.lattepanda.com/wp-content/uploads/2021/01/20210114165555.jpg)

   

10. BIOS reflashing will run automatically, wait until returning “ fsX:>”;

11. Press "Ctrl+Alt+Del" to restart the device. Job Done!
