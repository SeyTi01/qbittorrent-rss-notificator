param (
    [string]$name,
    [string]$iconPath = "$PSScriptRoot\icon.png"
)

New-BurntToastNotification -Text "Added Torrent: $name" -AppLogo $iconPath