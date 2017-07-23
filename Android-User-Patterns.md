# Patterns
## Backup Current Device
- You need to root the device. Simplest app is [kingroot.net](http://kingroot.net/) via an apk or windows app.
- Install Titanium Backup Tool (needs root).
- Backup to SDCard(internal,external)/Dropbox/GoogleDrive all your phone with Titanium Backup Tool (see http://www.titaniumtrack.com/kb/titanium-backup-kb/titanium-backup-user-guide.html)
  - applications (apks: user and system apps)
  - app data
    - internal (usually not available if the devices is not rooted)
    - external
      - internal sd card (emulated)
      - external sd card (might be encrypted)
## Restore on Current Device
- You can restore from SDCard/Dropbox/GoogleDrive (see https://youtu.be/oZEa10WtFng?t=10m31s)
  - all your apps and data
  - apps one by one

# Problems
1. Cannot use external SdCard on android-4.1.x from Titanium Backup Tool.  
   See [[Android-Storage-Permissions]]

