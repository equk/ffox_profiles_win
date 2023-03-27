# 🦊 ffox_profiles_win

Firefox profiles with security presets & userchrome styles on windows

## Summary

The purpose of this project is to provide a way to create new firefox profiles with security & privacy settings already preset.

It also includes some style customizations using `userChrome.css`.

## Why Make This Script?

*Mozilla Firefox has a profile manager in windows but doesn't create shortcuts for each profile & expects users to use the profile launcher to select each time.*

This script creates profiles & shortcuts for each making it easier for users.

It also uses the same preset settings & userChrome styles for each.

## Usage

Clone or download this repo

Edit `ffox_profiles.ps1` & add profiles you require to the `profiles` array

Optionally you may also want to change the `profilepath` variable (default is $mydocs\ffox_profiles)

Run the script

*script creates shortcuts & opens folder so u can pin them*

Pin shortcuts to each profile to the start menu / taskbar

## Features

Creation of new profiles with:

- [x] Security & Privacy Related Settings Pre-Set
- [x] Find At Top Of Screen
- [x] RAM Caching Enabled
- [x] Sandbox Check (user namespaces kernel setting)
- [x] Auto Update Profile Preferences
- [x] Bookmark Bar Spacing
- [x] Disable Ugly `urlbar` Zoom (firefox >75)
- [x] Disable Ugly Drop Shadow On Search
- [x] Disable Search Suggestions
- [x] Disable Sponsored Suggestions
- [x] Restore Old Square Tabs
- [x] Smaller Tab Density
- [x] Cleaner Image Context Menu
- [x] Smaller Bookmark Menu Spacing
- [x] Custom Folder Icons

With this script you can have a pinned shortcut on the start menu & the taskbar for each profile.

## Screenshot

![](https://raw.githubusercontent.com/equk/ffox_profiles_win/master/screenshots/ffox_win_profile.jpg)

## Notes

The default path for created profiles is `My Documents\ffox_profiles`

*Hardlinks are no longer used as pinning now works on Windows 10*
