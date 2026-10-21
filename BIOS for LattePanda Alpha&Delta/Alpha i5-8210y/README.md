# LattePanda Alpha 864s - Intel Core i5-8210Y - Boot-On-Power Guide
A detailed guide to updating the LattePanda Alpha Intel Core i5-8210Y to enable boot-on-power functionality via a bios update. This guide has only been tested on a Ubuntu 20.04 OS.
**Warning**: The bios update files are processor dependent, so please ensure the correct files are downloaded for your LattePanda model. If there are not files available for your model please contact LattePanda at the forum here: https://www.lattepanda.com/forum/
**Double Warning**: If the steps in this guide are not followed correctly or if you use incorrect bios files, you risk turning your LattePanda into a paperweight!!!
## System Requirements 
- Model: LattePanda Alpha 864s (DFR0546)
- Processor: Intel Core i5-8210Y
- OS: Ubuntu 20.04

## File Requirements: 
- eFuitX64.efi
- S70KR310A-VC-poweron.bin
- update.NSH

All contained in **EC- Auto power on.zip** https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%20Alpha%26Delta/Alpha-8210y/EC-%20Auto%20power%20on.zip 

## Instructions

Dillinger uses a number of open source projects to work properly:

- [AngularJS] - HTML enhanced for web apps!
- [Ace Editor] - awesome web-based text editor
- [markdown-it] - Markdown parser done right. Fast and easy to extend.
- [Twitter Bootstrap] - great UI boilerplate for modern web apps
- [node.js] - evented I/O for the backend
- [Express] - fast node.js network app framework [@tjholowaychuk]
- [Gulp] - the streaming build system
- [Breakdance](https://breakdance.github.io/breakdance/) - HTML
to Markdown converter
- [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

## Installation
1. On a separate computer, format a USB to "FAT32" format with the name "WINPE" (using windows formatter)
2. Downloaded the .zip folder "EC- Auto power on.zip" this repo
3. Extract the folder from the .zip
4. Copied all files from the downloaded folder onto the “WINPE” USB
5. With the LattePanda off, Inserted USB into the LattePanda, and while booting the LattePanda pressed the "ESC" to enter the BIOS settings
6. Navigate to the "Save & Exit" tab, selected "UEFI: Built-in EFI Shell" and pressed "Enter"
7. Once the "Shell>" is shown on the screen, input "fsX:" where "X" is the mount location of the USB. In my test, the usb was mounted at 1 so I used “fs1:” (X could be 1,2,3…).
8. Type the following "eFuitX64.efi /u S70KR310A-VC-poweron.bin" and pressed enter. This will load in the updated bios to be flashed.
9. The ITE Flash utility will then display and complete the programming update to the EC ROM. Waited until this has finished successfully AND DON’T TURN OFF YOUR LATTEPANDA
10. Press "CTRL + ALT + DEL" to restart the LattePanda ONCE THE EC ROM HAS BEEN UPDATED
11. Let the system boot fully, then fully shutdown the LattePanda and removed the power supply
12. Upon plugging in power, verify the system boots automatically
