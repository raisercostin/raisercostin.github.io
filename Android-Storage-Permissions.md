Android changed the way you get storage permissions. Here is a summary of the changes:



# Notions

## Internal/External - Removable/NonRemovable
- **Internal Storage** - By default, files saved to the internal storage are private to your application and other applications cannot access them (nor can the user). Usually: `/data/data/your.application.package.appname/someDirectory/`. This could be accessed via AndroidStudio or if the devices is rooted.
- **NonRemovable External Storage** - Eg: `/storage/emulated/0`
- **Removable External Storage** - This can be a removable storage media (such as an SD card) or an internal (non-removable) storage. Eg: `/storage/extSdCard`

## Primary/Secondary
  - Primary - 
  - Secondary - 

## SingleUser/MultiUser
Before Android 4.2, only one user could user your phone. There was no concept of two or more users creating separate profiles and logging into the same phone.  
As a result, there were no such paths like `/storage/emulated/someDirectory`
The emulated directories came up after the introduction of multiuser API in Android 4.2.

# Resources
- https://stackoverflow.com/documentation/android/150/storing-files-in-internal-external-storage#t=201707231208090317575
- https://stackoverflow.com/questions/25085955/android-storage-locations/38813578#38813578