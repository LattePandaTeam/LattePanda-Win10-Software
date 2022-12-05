# LattePanda 3 Delta BIOS File

## Default BIOS

This is used for mass production. Your board uses this BIOS firmware.

### BIOS Information

* Build Date:	2022/08/15
* BIOS Name:	LP-BS-7-S70JR120-CN51G-D_20220815113420.bin
* Checksum:	38B2
* BIOS Message:	LP-BS-7-S70JR120-CN51G-D BIOS Date: 08/15/2022 11:34:19

###  Update Record

* Fix the issue that NVME SSD works abnormally when booting after power failure
* Modify the frequency of eMMC to default to HS400
* Secure boot is turned off by default
* Add the patch that Windows Boot Manager can not boot
* Modify the USB3 Port2 mode to USB 3.1 Gen2
* Change the reading method of the MAC address
* Add Windows Recovery function, shortcut key F9

## Optional BIOS

This changes the SATA III lane in M.2 B Key to the PCIe x1  lane. So if you want to use the  PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.

### BIOS Information

* Build Date:	2022/11/02
* BIOS Name:	LP-BS-7-S70JR120-CN51G-D-ON_PCIE_20221102163320.bin
* Checksum:	CF92
* BIOS Message:	LP-BS-7-S70JR120-CN51G-D-ON_PCIE BIOS Date: 11/02/2022 16:33:20

###  Update Record

* Change the SATA III lane in M.2 B Key to the PCIe x1  lane



#### To download, please click "Download ZIP"

#### How to update the BIOS firmware?

  Please see the tutorial: http://docs.lattepanda.com/content/3rd_delta_edition/bios/

