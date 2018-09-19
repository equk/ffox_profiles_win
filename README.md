# ffox_profiles_win

firefox profiles with security presets & userchrome styles on windows

## Summary

The purpose of this project is to provide a way to create new firefox profiles with security & privacy settings already preset.

It also includes some style customizations using userChrome.css.

## Usage

Clone or download this repo

Edit `ffox_profiles.ps1` & add profiles you require to the profiles array

Run the script as an administrator

Pin shortcuts to each profile to the start menu / taskbar

## Features

creation of new profiles with:

* security & privacy related settings
* custom style overrides
* use RAM for caching
* custom find (top-right drop-down)
* shortcut to each profile

The script uses hardlinks to fix the issue in Windows 10 where you cannot pin firefox more than once.

With this script you can have a pinned shortcut on the start menu & the taskbar for each profile.

### userChrome.css styles

* move find bar to top
* move find to right styled as a dropdown
* add padding to items on bookmarks bar
* change folder icon in bookmarks to adwaita

The default path for created profiles is `My Documents\ffox_profiles`
