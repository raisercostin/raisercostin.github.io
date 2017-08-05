Android changed the way you get storage permissions. Here is a summary of the changes:
# Conclusions
## samsung - young - 4.1
I have /storage.sdcard0 as space
I have `/storage/extSdCard` for a removable sdcard.

# Notions
Titanium Backup classifies them into:
- Filesystem Storage (`/`) - For all ANdroid versions. Android 4.4+ may restrict access to some storage locations.
- DocumentProvider Storage - Requires Android 5.0+ and a suitable DocumentProvider. Pick the location you want to give TB access to, and then create a subdirectory for your backups.
- Filesystem Storage - Ext. SD card (`/mnt/extSdCard`) - For all Android versions. Android 4.4+ may restrict access to some storage locations.
- Filesystem Storage - Media (`/storage/emulated/legacy`) - For all Android versions. Android 4.4+ may restrict access to some storage locations.

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

## Versions
| Code name                             | Version number | Initial release date | API level | Support status[3]                | Storage Permissions                                                                                                                                                                                                                                                                                                                                             |
|---------------------------------------|----------------|----------------------|-----------|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| (No codename)[4]                      | 1.0            | September 23, 2008   | 1         | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| (Internally known as "Petit Four")[4] | 1.1            | February 9, 2009     | 2         | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Cupcake                               | 1.5            | April 27, 2009       | 3         | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Donut[5]                              | 1.6            | September 15, 2009   | 4         | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Eclair[6]                             | 2.0–2.1        | October 26, 2009     | 5–7       | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Froyo[7]                              | 2.2–2.2.3      | May 20, 2010         | 8         | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Gingerbread[8]                        | 2.3–2.3.7      | December 6, 2010     | 9–10      | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Honeycomb[9]                          | 3.0–3.2.6      | February 22, 2011    | 11–13     | Unsupported                      | Disallowsapplications from having write access to secondary storage (memory cards on devices with internal primary storage) outside of designated, application-specific directories. Full access to primary internal storage is still allowed through a separate application-level permission.                                                                  |
| Ice Cream Sandwich[10]                | 4.0–4.0.4      | October 18, 2011     | 14–15     | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| Jelly Bean[11]                        | 4.1–4.3.1      | July 9, 2012         | 16–18     | Unsupported                      |                                                                                                                                                                                                                                                                                                                                                                 |
| KitKat[12]                            | 4.4–4.4.4      | October 31, 2013     | 19–20     | Supported;[13] See clarification | Restriction for applications when accessing external storage, except for their own directoriesStorage Access Framework, an API allowing apps to retrieve files in a consistent manner. As part of the framework, a new system file picker allows users to access files from various sources (including those exposed by apps, such as online storage services). |
| Lollipop[14]                          | 5.0–5.1.1      | November 12, 2014    | 21–22     | Supported                        | Third-party applications regain the ability to read and modify data located anywhere on external storage, such as on SD cards.                                                                                                                                                                                                                                  |
| Marshmallow[15]                       | 6.0–6.0.1      | October 5, 2015      | 23        | Supported                        | Adoptable External storage to behave like Internal Storage                                                                                                                                                                                                                                                                                                      |
| Nougat[16]                            | 7.0–7.1.2      | August 22, 2016      | 24–25     | Supported                        | 7.1 - Manual storage manager – identifies files and apps using storage                                                                                                                                                                                                                                                                                          |
| O                                     | 8.0            | TBA                  | 26        | Beta                             |                                                                                                                                                                                                                                                                                                                                                                 |

## Resources
- https://stackoverflow.com/documentation/android/150/storing-files-in-internal-external-storage#t=201707231208090317575
- https://stackoverflow.com/questions/25085955/android-storage-locations/38813578#38813578
- http://www.tablesgenerator.com/markdown_tables

# Partitions
Android OS has different partitioning setups. Among them you should find:
- /system
- /data
- /cache
- /sdcard
- /sd-ext
- /recovery - is the application that helps with the recovery of the android.
  Recovery apps are
    - default
      - Android System Recovery (3e)
        - on a stock [Samsung Galaxy S I9000](http://www.gsmarena.com/samsung_i9000_galaxy_s-3115.php)
        - on a stock [Samsung Galaxy Young - GT-S6310 Android 4.1.2]
      - CWM-based Recovery v5.0.2.6 - on a stock [Samsung-GT-S5660--Gio](http://www.gsmarena.com/samsung_galaxy_gio_s5660-3741.php)
    - custom (If you install the [Rom Manager](https://play.google.com/store/apps/details?id=com.koushikdutta.rommanager&hl=en) this one will replace your current recovery partition.
      - ClockWorkMod (CWM) - http://www.clockworkmod.com/
      - TWRP

## Resources
- https://forum.xda-developers.com/showthread.php?t=2655871
