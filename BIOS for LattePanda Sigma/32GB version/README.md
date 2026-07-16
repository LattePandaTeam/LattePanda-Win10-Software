# BIOS Update

## WTADLC1R220-32G-B (32GB Version)

This release contains the latest BIOS update for the **32GB** memory configuration. This build incorporates all the feature enhancements and bug fixes from the 16GB version, along with the updated version string.

### 📁 File Information
- **File Name:** `WTADLC1R220-32G-B.bin`
- **Target Configuration:** 32GB Version
- **Build Date:** June 30, 2026
- **Checksum:** `652F`
- **BIOS Message:** `BIOS Version: WTADLC1R220-32G-B Date: 06/30/2026 18:02:07`

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

- **Version Update:** Updated the internal BIOS version string to `WTADLC1R220-32G-B`.

---

### ⚠️ Flashing Instructions & Warnings
- Please ensure your device is plugged into a reliable power source before flashing the BIOS.
- Do not turn off the device or interrupt the flashing process, as it may cause irreversible damage to the system.