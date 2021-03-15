### Update
#### -2021.03.15   
#### update "(Linux compatible) Alpha-8100y KR300 Default BIOS" that supports touch in Linux.


## How to reflash BIOS for your LattePanda Alpha or Delta
Format your USB drive to FAT32 and change the drive name to "WINPE";

Copy the right BIOS files directly to root of the USB drive;

Plug the U-drive in USB host and boot the system;

Press “ESC” and go into the BIOS setting page;

Navigate to “Save & Exit”, Select the “UEFI: Built-in EFI Shell” in Boot Override and press “Enter” ;



Wait few seconds until the page shows “Shell>”;



Input “ fsX:” then press “Enter” (X could be 1,2,3…);

Input “dir” then press “Enter” to check the file in the disk;



Use the “Tab” key to fast choose “AfuEfix64.efi” and “BS-7-S70KR200-K65A-B1A.Bin”, and Input “/p /b /n” .(DON'T need to input "/p /b /n" if you are reflashing LattePanda Delta) Then press “Enter” ;(The files' name could be different according to the BIOS type you choosed)



BIOS reflashing will run automatically, wait until returning “ fsX:>”;

Restart the system via pressing "Ctrl+Alt+Del" ;

Press ESC again to go into the BIOS menu. Navigate to Save & Exit. Under Boot Override choose UEFI: Built-in EFI;

Type in eFuitX64.efi /u EC-7-S70KR200-K65A-B1A.bin and press enter; (you can also use “Tab” to choose the file)



ITE Flash Utility will load and do flashing. Wait until it says Update EC Rom successfully!



Press "Ctrl+Alt+Del" to restart the device. Job Done!
