# MacOS Configurations

A collection of scripts and configuration files for customizing macOS, including keyboard remapping, Dock behavior, Finder settings, and other system tweaks.

## Configurations

| File | Description |
|---|---|
| `com.local.KeyRemapping.plist` | Remaps keyboard keys to control keyboard backlight brightness. |
| `dock-settings.sh` | Adjusts the Dock's auto-hide delay. |
| `show-extensions.sh` | Shows all file extensions in Finder. |
| `show-hidden-files.sh` | Shows hidden files and folders in Finder. |
| `show-path-bar.sh` | Displays the full folder path in Finder windows. |

## Usage

- **Shell scripts (`.sh`):** Run using `bash filename.sh` or make executable with `chmod +x`.
- **LaunchAgents (`.plist`):** Install in `~/Library/LaunchAgents/` and load using `launchctl`.

## Notes

- These configurations are intended for macOS.
- Review each file before running it or applying system changes.
- Some changes require restarting the affected macOS component to take effect.
- Configurations can be modified or reverted independently.
