# 🦊 ffox_profiles_win

Firefox profiles with security presets & userchrome styles on windows

## Summary

The purpose of this project is to provide a way to create new firefox profiles with security & privacy settings already preset.

It also includes some style customizations using userChrome.css.

## Usage

Clone or download this repo

Edit `ffox_profiles.ps1` & add profiles you require to the profiles array

Run the script as an administrator

Pin shortcuts to each profile to the start menu / taskbar

## Features

Creation of new profiles with:

- [x] Security & Privacy Related Settings Pre-Set
- [x] Find At Top Of Screen
- [x] RAM Caching Enabled
- [x] Adwaita Folder Icon
- [x] Bookmark Bar Spacing
- [x] Disable Ugly `urlbar` Zoom (firefox >75)
- [x] Disable Ugly Drop Shadow On Search
- [x] Shortcut to Each Profile

The script uses hardlinks to fix the issue in Windows 10 where you cannot pin firefox more than once.

With this script you can have a pinned shortcut on the start menu & the taskbar for each profile.

## Screenshots

![](https://raw.githubusercontent.com/equk/ffox_profiles_win/master/screenshots/ffox_win_profile.jpg)

multiple profiles pinned to taskbar:

![](https://raw.githubusercontent.com/equk/ffox_profiles_win/master/screenshots/taskbar_pin.jpg)

### userChrome.css styles

- [x] move find bar to top
- [x] add padding to items on bookmarks bar
- [x] change folder icon in bookmarks to adwaita
- [x] Disable Ugly `urlbar` Zoom (firefox >75)
- [x] Disable Ugly Drop Shadow On Search

The default path for created profiles is `My Documents\ffox_profiles`
