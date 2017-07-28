# Best Practices
## Automatic Push to Private Storage
Any good solution should have the following steps:
1. Read data as soon as possible from device
   - daily/with WIFI/with power on
2. Write data as soon as possible into a RAID1 storage

It will be easy to use a **transport** technology via available cloud solutions:
- Google Drive (be sure to disable the Camera Upload with changed resolution)
- Dropbox (Camera Upload is disabled if you don't pay)
- Synology DS Files (free, but a little harder to configure: see the server from internet)

# Bad Practices
## Saving Device Data On Internal Storage
The device can be lost, bricked, destroyed, accidentally deleted.
Besides android takes great lengths in protecting the internal storage: you can read application data only if rooted. Or with adb if the developer enables backup of data at google.

## Saving Device Data On External Storage
The external card can be lost, stolen, bricked. SDCards are particularly susceptible at getting bricked without any possibility to recover data from them. If you choosed an encrypted card then you cannot get data out of that card.

## Saving Device Data On Cloud Only Storage
The cloud provider might change the rules along the way, including by declaring bankruptcy. What happens with your data then? Yeah, sure: Google, Apple, Microsoft will not become bankrupt. But countries could put up firewalls, big companies change their policies, declare end of data for various products, etc.

### Apple Cloud
The service offered by apple: [iCloud](https://www.apple.com/icloud/).
  
### Google Cloud
  You don't have access to the full backup data saved by your own android device. You will get that back if you have a similar device. How many versions? What about transferring data to other devices? For how long? What about bought applications that are discontinued?