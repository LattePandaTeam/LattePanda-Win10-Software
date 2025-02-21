### How to reflash BIOS for your LattePanda Alpha or Delta

1. Format your USB drive to FAT32 and change the drive name to "WINPE";

2. Copy the right BIOS files directly to root of the USB drive;

3. Plug the U-drive in USB host and boot the system;

4. Press “ESC” and go into the BIOS setting page;

5. Navigate to “**Save & Exit**”, Select the “**UEFI: Built-in EFI Shell**” in Boot Override and press “Enter” ;

   ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash01.webp)

   

6. Wait few seconds until the page shows “Shell>”;

   ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash02.webp)

   

7. Input “ fsX:” then press “Enter” (X could be 1,2,3…);

8. Input “dir” then press “Enter” to check the file in the disk;

   ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash03.webp)

   

9. Use the “Tab” key to fast choose “AfuEfix64.efi” and “BS-7-S70KR200-K65A-B1A.Bin”, and Input “/p /b /n” .(DON'T need to input "/p /b /n" if you are reflashing LattePanda Delta) Then press “Enter” ;**(The files' name could be different according to the BIOS type you choosed)**

   ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash04.webp)

   

10. BIOS reflashing will run automatically, wait until returning “ fsX:>”;

11. Restart the system via pressing "Ctrl+Alt+Del" ;

12. Press ESC again to go into the BIOS menu. Navigate to **Save & Exit**. Under Boot Override choose **UEFI: Built-in EFI**;

13. Type in **eFuitX64.efi /u EC-7-S70KR200-K65A-B1A.bin** and press enter; (you can also use “Tab” to choose the file)

    ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash05.webp)

    

14. ITE Flash Utility will load and do flashing. Wait until it says **Update EC Rom successfully!**

    ![](https://github.com/LattePandaTeam/Docs/blob/main/docs/assets/images/Alpha_BIOS_Tutorial/Alpha-BIOS-reflash06.webp)

    

15. Press "Ctrl+Alt+Del" to restart the device. Job Done!
