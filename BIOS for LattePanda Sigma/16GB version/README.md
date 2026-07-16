# BIOS Update

## WTADLC1R220-16G-B (16GB Version)

This release contains the latest BIOS update for the **16GB** memory configuration. It includes new feature enhancements, UI improvements, and multiple bug fixes to improve system stability and compatibility.

### 📁 File Information
- **File Name:** `WTADLC1R220-16G-B.bin`
- **Target Configuration:** 16GB Version
- **Build Date:** June 30, 2026
- **Checksum:** `8AD0`
- **BIOS Message:** `BIOS Version: WTADLC1R220-16G-B Date: 06/30/2026 19:21:04`

---

### 🚀 Release Notes / Changelog

#### ✨ New Features & Enhancements
- **Chipset Menu Updates:** Added **HD Audio** and **SATA** control options under the Chipset menu.
- **POST Screen Update:** Added a hotkey prompt on the POST screen indicating to press **`F7`** to enter the Boot Menu.

#### 🐛 Bug Fixes
- **Password Prompt:** Fixed an issue where a password prompt would incorrectly appear when booting into the OS after setting both Administrator and User passwords.
- **User Mode UI:** Fixed an issue where certain options were incorrectly grayed out in User mode.
- **Display & Graphics:** 
  - Fixed the default DVMT value.
  - Fixed dual-display output issues within the BIOS setup.
  - Fixed slow boot times when connected to certain specific 4K HDMI monitors.
- **OS Compatibility:** Fixed an issue where the Main menu displayed abnormally when entering BIOS Setup from Ubuntu.
- **OS Version Display:** Fixed an issue where the BIOS version was displayed incorrectly within the operating system.
- **Version String:** Updated the internal BIOS version string to `WTADLC1R220-16G-B`.

---

### ⚠️ Flashing Instructions & Warnings
- Please ensure your device is plugged into a reliable power source before flashing the BIOS.
- Do not turn off the device or interrupt the flashing process, as it may cause irreversible damage to the system.