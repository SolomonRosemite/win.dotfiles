if (!(Get-Process whkd -ErrorAction SilentlyContinue))
{
    Start-Process whkd -WindowStyle hidden
}

. $PSScriptRoot\komorebi.generated.ps1

# Send the ALT key whenever changing focus to force focus changes
komorebic alt-focus-hack enable
# Default to cloaking windows when switching workspaces
komorebic window-hiding-behaviour cloak
# Set cross-monitor move behaviour to insert instead of swap
komorebic cross-monitor-move-behaviour insert
# Enable hot reloading of changes to this file
komorebic watch-configuration enable

# Create named workspaces I-X on monitor 0
komorebic ensure-named-workspaces 0 I II III IV V VI VII VIII IX X
# You can do the same thing for secondary monitors too
# komorebic ensure-named-workspaces 1 A B C D E F

# Assign layouts to workspaces, possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
komorebic named-workspace-layout I bsp

# Set the gaps around the edge of the screen for a workspace
komorebic named-workspace-padding I 0
komorebic named-workspace-padding II 0
komorebic named-workspace-padding III 0
komorebic named-workspace-padding IV 0
komorebic named-workspace-padding V 0
komorebic named-workspace-padding VI 0
komorebic named-workspace-padding VII 0
komorebic named-workspace-padding VIII 0
komorebic named-workspace-padding IX 0
komorebic named-workspace-padding X 0

# Set the gaps between the containers for a workspace
komorebic named-workspace-container-padding I II III IV V 0
komorebic named-workspace-container-padding I 0
komorebic named-workspace-container-padding II 0
komorebic named-workspace-container-padding III 0
komorebic named-workspace-container-padding IV 0
komorebic named-workspace-container-padding V 0
komorebic named-workspace-container-padding VI 0
komorebic named-workspace-container-padding VII 0
komorebic named-workspace-container-padding VIII 0
komorebic named-workspace-container-padding IX 0
komorebic named-workspace-container-padding X 0

# You can assign specific apps to named workspaces
komorebic named-workspace-rule exe "Spotify.exe" I
komorebic named-workspace-rule exe "Teams.exe" IV
komorebic named-workspace-rule exe "Outlook.exe" IV

# Disable mouse follow focus
komorebic mouse-follows-focus enable

# Configure the invisible border dimensions
komorebic invisible-borders 7 0 14 7

# Uncomment the next lines if you want a visual border around the active window
# komorebic active-window-border-colour 66 165 245 --window-kind single
# komorebic active-window-border-colour 256 165 66 --window-kind stack
# komorebic active-window-border-colour 255 51 153 --window-kind monocle
# komorebic active-window-border enable

komorebic complete-configuration
