# Patterns
## Backup Current Device
- [[RootAndroidDevice|Android User Patterns#root android device]]
- Install Titanium Backup Tool (needs root).
- Configure it with:
  - backup external SD Data as well (some apps save their data there) - Preferences > Backup app external data > Enabled (Always).
- Backup to SDCard(internal,external)/Dropbox/GoogleDrive all your phone with Titanium Backup Tool (see http://www.titaniumtrack.com/kb/titanium-backup-kb/titanium-backup-user-guide.html)
  - applications (apks: user and system apps)
  - app data
    - internal (usually not available if the devices is not rooted)
    - external
      - internal sd card (emulated)
      - external sd card (might be encrypted)

## Root Android Device
### Procedure
1. With a new phone (samsung gio in my case)
2. [Download](http://kingroot.net/) and/or Copy from sdcard the kingroot.apk.
3. Settings:
   - Unknown sources: checked. Allow installation of non-Market applications.
   - USB debugging: checked. Debug mode when USB is connected (if root from external OS: windows/osx/linux).
4. Add WiFi (kingroot require network connectivity)
5. Run kingroot app.
6. Rooted!!!!

### Notes 
- Simplest apps both as an apk or windows app.
  - ![](https://www.kingoapp.com/static/images/favicon.ico)[KingoRoot - kingoapp.com](https://www.kingoapp.com)
  - ![](https://kingroot.net/inc/uploads/2016/08/KingRoot-Logo.png)[KingRoot - kingroot.net](http://kingroot.net/) - worked for me. i don't know how safe it is. leaves some widgets on the lock screen.
- Comparisons
  - https://forum.xda-developers.com/lg-g2/help/kingroot-vs-kingoroot-list-rooting-t3576632
  - https://missingtricks.net/replace-kingroot-kinguser-with-supersu-superuser-android-guide/
  - http://kingrootapkdownloads.com/kingroot-vs-kingoroot/
  - https://www.reddit.com/r/androidapps/comments/4eglrp/kingoroot_displaying_ads_in_lockscreen/
- My Devices - search for yours here: https://www.kingoapp.com/android-root/devices.htm
  - HTC One M9 - https://root-android.kingoapp.com/htc/how-to-root-m9-hima.htm
  - Samsung Galaxy S - I9000 Android 2.3.6
  - Samsung Galaxy Gio - [GT-S5660 - Android 2.3.3](http://www.gsmarena.com/samsung_galaxy_gio_s5660-3741.php)
  - Samsung Galaxy Young - [GT-S6310 Android 4.1.2](http://www.gsmarena.com/samsung_galaxy_young_s6310-5280.php)
- For my i9000 rooting worked with kingoroot only. After that `adb shell` then `su` worked perfectly.
### KingoRoot
- It works with super Su
- When an app needs root permisions `KingoRoot Super User` app will automatically detect and display a prompt.
- Kingo Link can be removed. (https://android.stackexchange.com/questions/155956/after-rooting-with-kingo-root-do-i-need-to-leave-kingo-link-on-the-device)
### KingRoot
- it works with SuperSu Me?

## Super User Manager
After you [[root|Android User Patterns#root android device]] you might want to replace the default super user manager that grants root rights to different applications.
The options are:
- for KingRoot
  - Super Su Me Pro - on playstore - https://play.google.com/store/apps/details?id=darkslide.com.supersumepro
  - Super Su Me - on apk4fun - https://www.apk4fun.com/apk/56552/

## Restore on Current Device
- You can restore from SDCard/Dropbox/GoogleDrive (see https://youtu.be/oZEa10WtFng?t=10m31s)
  - all your apps and data
  - apps one by one

## Fix Permissions
On some Samsungs the CWM-based Recovery has the option to fix permissions. See https://forum.xda-developers.com/galaxy-s2/help/fix-permissions-t1251296 .
My Samsung-GT-S5660--Gio haas the `CWM-based Recovery v5.0.2.6`

## Recovery Tools
Enable them by `power off` > `home`+`power on` (Samsung-GT-S5660--Gio).
Among options:
- apply update from sdcard
- wipe data/factory reset
- wipe cache partition
- install zip from sdcard
- backup and restore
- mounts and storage
- advanced
  - reboot recovery
  - wipe Dalvik cache
  - wipe battery status
  - report error
  - key test
  - show log
  - partition SD Card
  - fix permissions

## Recover Bootloader
If you managed to [[Soft Brick]] your android device you still might have some options:
- Odin
- Heimdall-1.4.0
- Heimdall-Gui-1.4.0 (harder to describe what to put where)

Deprecated options:
- heimdall-one-click

The process go as the following:
1. You need some drivers that will now to connect to your device
2. Heimdall should detect the serial port when you plug your android  
   `heimdall detect`
3. Find out the name of the partitions:
   `heimdall print-pit  > <myPartitions>.txt`
4. You run a command to transfer various files to your device like this:  
   `heimdall flash --IBL+PBL boot.bin --SBL sbl.bin --SBL2 Sbl.bin --PARAM param.lfs --KERNEL zImage --FACTORYFS factoryfs.rfs --CACHE cache.rfs --MODEM modem.bin --verbose`  
   The parameters are the name of the partitions and various files that you found online for your phone.

Other useful things:
- Check partitions from `.pit` files:
  `heimdall print-pit --file s1_odin_20100512.pit`
- 

## Choose OS
You have several options:
- original Android
  - locked in a specific network (In Romania is illegal to have it locked. you can as for an unlock.)
  - unlocked - bought directly like that
- cyanogen - discontinued in 2015ish?
- [lineageos](https://lineageos.org/) - http://www.androidauthority.com/cyanogenmod-lineageos-654810/ - a different 

## Android Alternative Marketplaces
- download apks directly - http://www.apkmirror.com/apk/clockworkmod/rom-manager/rom-manager-5-5-3-7-2-release/rom-manager-5-5-3-7-android-apk-download/download/

## Low Level Shell To Android
```
adb shell
su
#list full details
ls -l /
#change owner: root, system, ...
chown groupId.userId /system/*

# !!! If you do this at reboot the device is blocked in a [[Boot Loop]]
#allow to change rights on a read only filesystem: After error: Unable to chmod /system/app/AccountAndSyncSettings.apk: Read-only file system
mount -o rw,remount -t rootfs rootfs /system
#change rights
chmod 777 /system/*

```

# Problems
1. Cannot use external SdCard on android-4.1.x from Titanium Backup Tool.  
   See [[Android-Storage-Permissions]]
2. Cannot run `su` through `adb shell`
   ```
   d:\personal\work\galaxyS-GT-I9000-xwjw1>adb shell
   $ su
   su: not found
   ```
   A: The device is not rooted.
3. I get the message "Applicattion stopped unexpectedly. Please try again. Force close" for a lot of applications.
   A: The permissions on your `/data` partition are not ok. Or maybe something else.