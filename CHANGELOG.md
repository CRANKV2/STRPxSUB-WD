## Changelog for (v2.3)

### Performance Enhancements
- Improved resource management for better responsiveness.
- Optimized CPU usage for smoother performance.
- Streamlined background processes for reduced resource consumption.
- Enhanced memory management for improved efficiency.

### Compatibility Improvements
- Fine-tuned module compatibility with various Android versions.
- Improved stability on a wider range of device models.
- Enhanced network settings for better compatibility with different networks.
- Adjusted kernel parameters for improved compatibility.

### New Feature: `App Hibernation Toggle`
- Introducing the `App Hibernation` toggle in the main menu.
- Easily enable or disable `App Hibernation` to conserve battery.
- `App Hibernation` helps you save battery by suspending power-hungry apps.
- Take control of your device's performance with this new feature.

### Bug Fixes and Tweaks
- Resolved minor UI glitches for a polished user experience.
- Fixed a rare issue causing temporary module unresponsiveness.
- Tweaked I/O scheduler settings for improved file access.
- General bug fixes and performance optimizations.

### Thank you!
Thank you for being part of our community! Your support is appreciated. If you have any questions or feedback, don't hesitate to share them with us.

Stay tuned for more updates! 🚀
------
## `v2.2` - Power Unleashed!

#### Battery Management:
- Real-time battery status monitoring.
- Enables Battery Profile when battery falls below `20%` (not charging).
- Disables Battery Profile when battery is charging below `20%`.
- No action taken when battery is above `20%` or not charging.

#### Enhanced Power App Management (FHA Menu):
- Freeze or force close power-hungry apps.
- User-defined resource thresholds and app types (user, system, or both).
- Displays process `PID` and numbers before action.

#### CPU Governor Management (Ultra Battery Profile):
- Backs up current CPU governor settings when enabling the profile.
- Restores previous governor settings when turning off the profile.
- Selects the most power-efficient governor for better battery life.
- Fallback to a general governor when specific governors are unavailable.
- Comprehensive logging in "Ultra Battery Profile Debug Log."

### New Features:
- Added a module information notification displayed after boot.
- The module information notification provides details about module commands, usage, and developer information.
- An additional notification with extra information can be shown as well.

#### Dynamic Voltage and Frequency Scaling (DVFS) Prevention:
- Prevents dynamic changes to CPU frequencies and governors during Ultra Battery mode.
- Maximizes power efficiency by locking CPU settings.

#### Main Menu Enhancements:
- Redesigned for improved readability.

#### Changelog Additions:
- Continuous operation with periodic checks and actions for optimal battery performance.
- Log file is checked and truncated if it exceeds 1MB to prevent excessive growth.

## Reworked Features:

### Battery Saver Mode Toggle:
- Enable or disable Battery Saver Mode.

### Force-Doze Toggle:
- Enable or disable Force-Doze.

### Screen Timeout Adjustment:
- Adjust screen timeout duration.

### Adaptive Brightness Toggle:
- Enable or disable Adaptive Brightness.

### Wakelock Timeout Adjustment:
- Adjust Wakelock timeout duration.

### Auto-Sync Toggle:
- Enable or disable Auto-Sync.

### Auto-Sleep Timeout Adjustment:
- Adjust Auto-Sleep timeout duration.

### Auto-Sleep Conditions Adjustment:
- Adjust Auto-Sleep conditions when unplugged from charger.

### Display Sleep Timeout Adjustment:
- Adjust display sleep timeout duration.

### Wake on Charge Toggle:
- Enable or disable Wake on Charge.

### WiFi Scan Interval Adjustment:
- Adjust WiFi scan interval.

### Ultra Battery Profile Enhancements:
- Supports DVFS prevention.
- Selects the most suitable CPU governor for power efficiency.
- Logs changes and actions for user feedback.

#### Other Improvements:
- Complete rework of the battery-saving script.
- Enhanced .log file storage in module directory.
- New power-saving tweaks.
- Removed Miui blur issues.
- Fine-tuned core tweaks for maximum battery gains.
- Enable or disable profiles on boot from the menu.
- Reworked Quick command usage with `SUB -h` (HELP) menu.
- Help menu provides device information for troubleshooting.
- Bug fixes and performance optimizations.
- Optimized CPU performance for better battery life.
- Enhanced memory management for improved efficiency.
- Reduced background processes for lower resource usage.
- Streamlined system processes to conserve battery.
- Fine-tuned I/O scheduler settings for power efficiency.
- Improved network settings for reduced power consumption.
- Enhanced GPU management for lower energy usage.
- Tweaked kernel parameters for maximum battery backup.
- Reduced system log generation for lower CPU usage.
- Implemented idle preferences for system responsiveness.
- Enhanced background task handling for improved efficiency.
- Periodically checks and manages the log file to prevent excessive growth.
- Enhanced user experience by providing clear instructions and information.
- Users can now access important module details directly from the notification.
- Improved user engagement by displaying developer and community information.
------
