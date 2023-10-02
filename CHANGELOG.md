## Version 2.4 Changelog

### [UNRELEASED]

#### Table of Contents
- [Screen Status Handler Enhancement](#screen-status-handler-enhancement)
- [Menu Options Customization](#menu-options-customization)
- [Logging Functionality](#logging-functionality)
- [Battery Check Function](#battery-check-function)
- [Added](#added)
- [Enhanced](#enhanced)
- [Changed](#changed)
- [Removed](#removed)
- [Fixed](#fixed)
- [Bug Fixes and Optimizations](#bug-fixes-and-optimizations)

#### Screen Status Handler Enhancement
- Added the ability to enable or disable the Screen Status Handler feature from the config file.
- When set to '1', the script will automatically enable the profile when the screen is off and disable it when the screen is on.
- When set to '0', the script is effectively paused, and no automatic actions will be taken.
- This provides greater control and flexibility for users to manage the script's behavior.

#### Menu Options Customization
- Every menu option in the script can now be configured to apply changes either immediately or after a device reboot.
- Users can choose when to apply specific settings, giving them more control over their device's performance and power management.

#### Logging Functionality
- Added logging functionality to the script.
- A log file is now created at `/data/adb/modules/STRPxULTRAxBATTERY/SUB_Daemon.log`.
- Log actions and messages are recorded in the log file.
- Log size is checked and truncated if it exceeds 1MB (1048576 bytes).

#### Battery Check Function
- Added a battery check function to monitor battery status and take appropriate actions.

#### Added
- Merged the following scripts into one `SUB_Daemon`:
  - `cpu_gov_lock_screen_handler`: Controls CPU governors based on screen lock status.
  - `cpu_freq_on_lock_handler`: Manages CPU frequencies when the screen is locked or unlocked.
  - `data_wifi_on_lock_handler`: Controls mobile data and Wi-Fi when the screen is locked or unlocked.
  - `screen_off_profile_handler`: Handles screen status and profiles.
  - `auto_sub`:
    Handles SUB Battery Profile if the device's battery goes below 20%.

#### Enhanced
- Improved script efficiency by combining multiple functionalities into a single loop.

#### Changed
- Improved screen status detection by checking display state instead of brightness.
  - This change addresses an issue where the script now accurately determines the screen's on/off state.
- Special thanks to [@fashl1](https://t.me/fashl1) for reporting the issue.

#### Removed
- Removed individual scripts for CPU, WiFi and Mobile Data, CPU Governor, and Screen Status configurations.

#### Fixed
- Fixed issues related to CPU frequency handling and configuration.
- Fixed issues related to WiFi and Mobile Data control.
- Fixed issues related to CPU governor configuration.
- Fixed issues related to screen status handling.

#### Bug Fixes and Optimizations
- Improved script performance and stability.
- Resolved minor issues reported by users.

Thank you for your continued support, and we hope you enjoy the enhanced features and flexibility in version 2.4!
