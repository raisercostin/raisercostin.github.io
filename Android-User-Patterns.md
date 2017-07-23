# Patterns
## Backup Current Device
- [[RootAndroidDevice|Android User Patterns#RootAndroidDevice]]
- Install Titanium Backup Tool (needs root).
- Backup to SDCard(internal,external)/Dropbox/GoogleDrive all your phone with Titanium Backup Tool (see http://www.titaniumtrack.com/kb/titanium-backup-kb/titanium-backup-user-guide.html)
  - applications (apks: user and system apps)
  - app data
    - internal (usually not available if the devices is not rooted)
    - external
      - internal sd card (emulated)
      - external sd card (might be encrypted)
## Root Android Device
- You need to root the device. Simplest apps both as an apk or windows app.
  - [KingoROOT - kingoapp.com](https://www.kingoapp.com)
  - [KingRoot - kingroot.net](http://kingroot.net/) - worked for me. i don't know how safe it is. leaves some widgets on the lock screen.

## Restore on Current Device
- You can restore from SDCard/Dropbox/GoogleDrive (see https://youtu.be/oZEa10WtFng?t=10m31s)
  - all your apps and data
  - apps one by one

## Choose OS
You have several options:
- original Android
  - locked in a specific network (In Romania is illegal to have it locked. you can as for an unlock.)
  - unlocked - bought directly like that
- cyanogen - discontinued in 2015ish?
- [lineageos](https://lineageos.org/) - http://www.androidauthority.com/cyanogenmod-lineageos-654810/ - a different 

# Problems
1. Cannot use external SdCard on android-4.1.x from Titanium Backup Tool.  
   See [[Android-Storage-Permissions]]

