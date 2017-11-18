First of all use SessionBuddy extension : https://sessionbuddy.com/ . There are other nice extensions like: `TabCloud` and `OneTab`.

Chrome keeps the tabs and sessions in two files (I have Chrome Version 62.0.3202.94 (Official Build) (64-bit)):
  - `c:\Users\<YOUR_USERNAME>\AppData\Local\Google\Chrome\User Data\Default\` :
    - `Last Session`
    - `Last Tabs`
    - `Current Session`
    - `Current Tabs`

If you save them you can restore a session by copying some of them to `Current Session` and `Current Tabs` and bang ... you restored the chrome state.

# Resources
- http://lmgtfy.com/?q=chrome+restore+lost+closed+tab
- explain why google stores only last session and a suggestion to use `SessionBuddy`: https://bugs.chromium.org/p/chromium/issues/detail?id=130066
- https://lifehacker.com/how-can-i-restore-closed-tabs-after-accidentally-quitti-1452314285
- https://chromium.googlesource.com/chromium/src/+/master/docs/user_data_dir.md
- https://sessionbuddy.com/