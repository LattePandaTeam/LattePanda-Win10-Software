
### How to reflash BIOS for your LattePanda Alpha or Delta

1. Format your USB drive to FAT32 and change the drive name to "WINPE";

2. Copy the right BIOS files directly to root of the USB drive;

3. Plug the U-drive in USB host and boot the system;

4. Press “ESC” and go into the BIOS setting page;

5. Navigate to “**Save & Exit**”, Select the “**UEFI: Built-in EFI Shell**” in Boot Override and press “Enter” ;

   ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/b77a4f2a4856f0e42f5a2ce0ec3bbb7b.jpg)

   

6. Wait few seconds until the page shows “Shell>”;

   ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/b77a4f2a4856f0e42f5a2ce0ec3bbb7b.jpg)

   

7. Input “ fsX:” then press “Enter” (X could be 1,2,3…);

8. Input “dir” then press “Enter” to check the file in the disk;

   ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/6c1750ffd5d62b829e64a480d7aa26e8.jpg)

   

9. Use the “Tab” key to fast choose “AfuEfix64.efi” and “BS-7-S70KR200-K65A-B1A.Bin”, and Input “/p /b /n” .(DON'T need to input "/p /b /n" if you are reflashing LattePanda Delta) Then press “Enter” ;**(The files' name could be different according to the BIOS type you choosed)**

   ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/0c25120975dc1ab56e239989c06465a9.jpg)

   

10. BIOS reflashing will run automatically, wait until returning “ fsX:>”;

11. Restart the system via pressing "Ctrl+Alt+Del" ;

12. Press ESC again to go into the BIOS menu. Navigate to **Save & Exit**. Under Boot Override choose **UEFI: Built-in EFI**;

13. Type in **eFuitX64.efi /u EC-7-S70KR200-K65A-B1A.bin** and press enter; (you can also use “Tab” to choose the file)

    ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/4a88c315e45d38b8963c5c52c22d867c.jpg)

    

14. ITE Flash Utility will load and do flashing. Wait until it says **Update EC Rom successfully!**

    ![](https://img.dfrobot.com.cn/wiki/5d7073afb7c3fa38ec48cda1/b71e2c69a6f8c3442a7b951ed265f845.jpg)

    

15. Press "Ctrl+Alt+Del" to restart the device. Job Done!
