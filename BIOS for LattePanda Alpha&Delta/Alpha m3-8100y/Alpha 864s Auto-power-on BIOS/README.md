## HOW TO REFLASH BIOS

1. Format your USB drive to FAT32 and change the drive name to "WINPE";
2. Copy all the files under **"CDJQ-BS-7-S70KR300-KF65A-101-J"** to root directory of your USB Drive.
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/Untitled.png)
3. Plug the U-drive in USB host and boot the system; Press “ESC” and go into the BIOS setting page.
4. Navigate to “Save & Exit”, choose "UEFI: Built-in EFI Shell" and press “Enter";
 ![](https://www.lattepanda.com/wp-content/uploads/2019/08/Alpha-BIOS-reflash01.jpg)
5. Use Tab key to select BIOS.NSH, and press "Enter", it will reflash automatically. Wait until it returns **"fs3:\CDJQ-BS-7-S70KR300-KF65A-101-J>"**;
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/8100Y-auto-BIOS-01.jpg)
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/8100Y-auto-BIOS-02.jpg)
6. Shut down your LattePanda Alpha and unplug your USB drive;


7. Copy all file under **"EC-7-S70KR300_20190704"** to root directory of your USB Drive.
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/Untitled2.png)
8. Press ESC again to go into the BIOS menu. Navigate to **Save & Exit**. Under Boot Override choose **UEFI: Built-in EFI**;
9. Input “ fsX:” then press “Enter” (X could be 1,2,3…); Then input “dir” then press “Enter” to check the file in the disk;
10. Type in **eFuitX64.efi /u S70KR300_20190704.bin** and press enter; (you can also use “Tab” to choose the file)
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/8100Y-auto-BIOS-03.jpg)
11. ITE Flash Utility will load and do flashing. Wait until it says **Update EC Rom successfully!**
 ![](https://www.lattepanda.com/wp-content/uploads/2020/06/8100Y-auto-BIOS-04.jpg)
12. Press "Ctrl+Alt+Del" to restart the device. Job Done!
