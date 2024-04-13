# qBittorrent RSS Notificator

This script is designed to provide Windows notifications for added torrents in qBittorrent using the BurntToastNotification module in PowerShell.

## Prerequisites

- PowerShell
- qBittorrent
- BurntToastNotification PowerShell Module

## Installation

### BurntToastNotification

To install the BurntToastNotification module in PowerShell, follow these steps:

1. Open PowerShell as an administrator.
2. Run the following command to install the module:

```powershell
`Install-Module -Name BurntToast`
```

## Configuration

### qBittorrent

To configure qBittorrent to run the script when a torrent is added, follow these steps:

1. Navigate to Tools > Options > Downloads.
2. In the Run external program on torrent added, add the path to the `notificationOnTorrentAdd.bat` file, followed by "%N" "%G". For example:
`C:\Path\To\Your\Script.bat "%N" "%G"`

### RSS Downloader

To automatically set a “Notification” tag for added torrents, follow these steps:

1. Create a new tag named “Notification” in qBittorrent.
2. Navigate to Tools > Options > RSS.
3. Click on Edit auto downloading rules...
4. In the Rules section, click on the Add button to create a new rule.
5. Set the rule properties as needed, and in the Add tag field, enter Notification.

## Usage

Once everything is set up, qBittorrent will automatically run your script and display a Windows notification whenever a new torrent is added.
