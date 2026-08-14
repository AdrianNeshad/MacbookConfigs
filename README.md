# macOS Keyboard Backlight Remapping

This plist remaps two existing keyboard keys to control the keyboard backlight brightness on macOS.

* One key → Decrease keyboard backlight brightness
* One key → Increase keyboard backlight brightness

The remapping uses macOS `hidutil` and is automatically applied at login using `launchd`.

## Usage

Copy the `.plist` file to:

```bash
~/Library/LaunchAgents/
```

Then load it with:

```bash
launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist
```

The key remapping will now be active and will automatically load when you log in to macOS.

To disable it:

```bash
launchctl unload ~/Library/LaunchAgents/com.local.KeyRemapping.plist
```
