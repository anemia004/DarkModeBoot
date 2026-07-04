# DarkModeBoot – Magisk Module

Automatically enables Android's built‑in dark mode (UI Night Mode) at boot.  
No screen filter, no background service, zero battery drain.

**Target:** Android 7.x (Nougat) custom ROMs (e.g., LineageOS 14.1, Resurrection Remix)  
**Tested on:** j3xlte running Android 7.1.2

## How it works
- Sets `settings put secure ui_night_mode 2`
- Forces an immediate configuration refresh (`service call activity 18 i32 1`) so all apps switch to dark mode instantly, including splash screens.

## Compatibility
- **Should work** on most Android 7.x custom ROMs that support `ui_night_mode` (most LineageOS‑based ROMs do).
- If your ROM already has a dark QS/Settings toggle, the module will not conflict; it simply ensures the global night mode is enabled at boot.
- Not for stock Samsung/HTC/etc. firmware – requires a custom ROM with OMS or RRO overlay support (or at least the `ui_night_mode` feature).

## Installation
1. Download the latest `DarkModeBoot.zip` from the [Releases](https://github.com/anemia004/DarkModeBoot/releases) page.
2. Open Magisk Manager → Modules → Install from storage → select the zip.
3. Reboot.
4. Wait about 20 seconds after boot – your system will turn dark.

## Manual setup (without zip)
Copy `service.sh` to `/data/adb/service.d/`, set permissions to 755, and reboot.

