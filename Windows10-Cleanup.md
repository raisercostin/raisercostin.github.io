# Tutorials
  - http://smyl.es/tutorial-how-to-build-the-ultimate-custom-usb-drive-with-multiple-bootable-installs-for-windows-and-linux-and-portableapps-for-windows/

# Notes
1. Create Dual Boot
2. Write iso to a flash drive without overwriting data (but overwriting other bootable stuff)
   - advices
     - https://www.thurrott.com/windows/windows-10/5162/windows-10-tip-create-windows-10-setup-media-the-right-way
     - https://www.groovypost.com/howto/create-windows-10-bootable-usb-flash-drive/
   - How to keep the linux boots as well?

3. Do backup before

# Create Dual Boot Windows10 & Ubuntu flash disk
## Download both
- download Ubuntu 17.04 - https://www.ubuntu.com/download/desktop
- download Windows10 Home image - https://www.microsoft.com/en-us/software-download/windows10
  - Download windows 10 iso (media creation tool)
    - from here: https://www.microsoft.com/en-us/software-download/windows10
    - advices
      - https://www.groovypost.com/howto/windows-10-iso-download/
## Dual-boot
- https://www.pcworld.com/article/2955460/operating-systems/dual-booting-linux-with-windows-what-you-need-to-know.html
- https://www.howtogeek.com/262944/how-to-create-a-master-installation-flash-drive-with-multiple-versions-of-windows/

# Tools
- multibootusb - http://multibootusb.org
  - tried and worked
- WinSetupFromUsbhttp://www.winsetupfromusb.com/
- Rufus
- yumi - https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
  ![](http://thewindowsclub.thewindowsclubco.netdna-cdn.com/wp-content/uploads/2014/04/Wimboot_-600x60.jpg)
  - wimboot - new, available for UEFI systems. WIMBoot are subject to a performance hit. Hence, it only targets new computers with small SSD or eMMC-based hard drives. Windows image file boot (WIMBoot) lets you set up a PC so that it runs directly from a compressed Windows image file (WIM file). WIMBoot can significantly reduce the amount of space used by Windows files.May 1, 2014
    - http://www.thewindowsclub.com/wimboot-windows-image-boot
  - **bootmgr** - Windows Boot Manager (BOOTMGR) is a small piece of software, called a boot manager, that's loaded from the volume boot code, which is part of the volume boot record. BOOTMGR helps your Windows 10, Windows 8, Windows 7, or Windows Vista operating system start.
- qemu - https://www.qemu.org/
- https://www.raymond.cc/blog/integrate-multiple-antivirus-rescue-disk-into-one-single-disc-or-usb-flash-drive-with-sardu/

# Bootloaders
- syslinux - simpler. Always found syslinux way more KISS especially for simple BIOS systems. 
- grub - more complex
## References
- https://askubuntu.com/questions/651902/what-is-the-difference-between-grub-and-syslinux
- https://www.quora.com/What-is-the-difference-between-SYSLINUX-and-GRUB
- https://www.reddit.com/r/archlinux/comments/2l5rvk/syslinux_or_grub/

# More
- UEFI machine vs  CSM Boot machine
- dual booting
- bootable usb
- https://www.groovypost.com/howto/create-windows-10-bootable-usb-flash-drive/
- https://www.howtogeek.com/262944/how-to-create-a-master-installation-flash-drive-with-multiple-versions-of-windows/
- https://www.pcworld.com/article/2955460/operating-systems/dual-booting-linux-with-windows-what-you-need-to-know.html
- https://askubuntu.com/questions/599746/how-do-i-burn-the-windows-10-iso-to-a-usb