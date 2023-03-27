#requires -version 5.0
#requires -runasadministrator

<#
.SYNOPSIS
    Setup Multiple Firefox Profiles in Windows
.DESCRIPTION
    Setup Multiple Firefox Profiles in Windows
    Create new firefox profiles with security & privacy settings already preset
    Requires Admin Access
    Twitter: @equilibriumuk
.NOTES
    File Name      : ffox_profiles.ps1
    Author         : @equilibriumuk
    Prerequisite   : PowerShell V5
.LINK
    Script posted on github:
    https://github.com/equk
#>

$profiles = @(
    "default"
    "youtube"
    "spotify"
    "twitch"
)

$mydocs = [Environment]::GetFolderPath("MyDocuments")
$profilepath = "$mydocs\ffox_profiles"
$ffox_install = "C:\Program Files\Mozilla Firefox"
$script_pwd = Get-Location
$profile_template = ".\profile_template"

if(-Not (Test-Path -Path $profilepath )){
    Write-Host "!> Profile base folder not found"
    Write-Host "+> Creating profile base folder $profilepath"
    New-Item -ItemType directory -Path $profilepath
}

foreach ($profile in $profiles) {
    if(-Not (Test-Path -Path $profilepath\$profile )){
        Write-Host "!> Profile folder not found"
        Write-Host "+> Creating profile folder $profilepath\$profile"
        New-Item -ItemType directory -Path $profilepath\$profile
    }
    if(-Not (Test-Path -Path $profilepath\$profile\prefs.js )){
        Write-Host "!> prefs.js not found"
        Write-Host "+> Copying prefs.js for $profile"
        cp $profile_template\prefs.js $profilepath\$profile\prefs.js
    }
    if(-Not (Test-Path -Path $profilepath\$profile\chrome\userChrome.css )){
        Write-Host "!> userChrome.css not found"
        Write-Host "+> Copying userChrome.css for $profile"
        if(-Not (Test-Path -Path $profilepath\$profile\chrome )){
            mkdir $profilepath\$profile\chrome
        }
        cp $profile_template\chrome\userChrome.css $profilepath\$profile\chrome\userChrome.css
    }
    if(-Not (Test-Path -Path "$profilepath\firefox_$profile.lnk" )){
        Write-Host "!> No existing Shortcut not found for $profile"
        Write-Host "+> Creating Shortcut to firefox_$profile.exe"
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$profilepath\firefox_$profile.lnk")
        $Shortcut.TargetPath = "$ffox_install\firefox.exe"
        $Shortcut.Arguments = "--profile $profilepath\$profile -no-remote"
        $Shortcut.WorkingDirectory = "$ffox_install"
        $Shortcut.Save()
    }
}
Write-Host "----------------------------------------------------------"
Write-Host " Shortcuts for each profile can be found in $profilepath"
Write-Host " Opening $profilepath in explorer"
Write-Host " You should now be able to pin each profile seperately"
Write-Host "----------------------------------------------------------"
Invoke-Item $profilepath