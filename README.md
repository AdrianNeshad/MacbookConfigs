# MacOS Configurations

| File | Description | Usage |
|---|---|---|
| `com.local.KeyRemapping.plist` | Remaps two keyboard keys to decrease and increase keyboard backlight brightness using `hidutil`. | Copy to `~/Library/LaunchAgents/` and load with `launchctl`. Automatically applies at login. |
| `dock-settings.sh` | Configures the Dock's auto-hide delay using macOS `defaults`. Includes comments explaining available values and how to revert the changes. | Run `chmod +x dock-settings.sh` followed by `./dock-settings.sh` in Terminal. |

## Usage

### Keyboard Remapping

Copy the plist file to your LaunchAgents directory:

```bash
cp com.local.KeyRemapping.plist ~/Library/LaunchAgents/
```

Load the configuration:

```bash
launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist
```

The key remapping will be active and configured to load at login.

To disable it:

```bash
launchctl unload ~/Library/LaunchAgents/com.local.KeyRemapping.plist
```

### Dock Settings

Make the script executable:

```bash
chmod +x dock-settings.sh
```

Run it:

```bash
./dock-settings.sh
```

The script changes the Dock's auto-hide delay and restarts the Dock to apply the change.

To restore the default macOS setting, uncomment the reset commands at the end of the script and run it again:

```bash
defaults delete com.apple.dock autohide-delay
killall Dock
```

## Notes

- These configurations are intended for macOS.
- Review each file before running it or applying system changes.
- Some changes require restarting the affected macOS component to take effect.
- Configurations can be modified or reverted independently.
