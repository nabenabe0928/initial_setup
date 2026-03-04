# This section to disable collided shortcuts.
gsettings set org.gnome.shell.keybindings toggle-application-view "[]"
gsettings set org.gnome.shell.keybindings toggle-message-tray "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys rotate-video-lock-static "['XF86RotationLockToggle']"

# This section for app launch.
gsettings set org.gnome.shell.keybindings switch-to-application-2 "['<Super>2', '<Super>t']"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "['<Super>3', '<Super>a']"
gsettings set org.gnome.shell.keybindings switch-to-application-5 "['<Super>5', '<Super>c']"
gsettings set org.gnome.shell.keybindings switch-to-application-6 "['<Super>6', '<Super>v']"
gsettings set org.gnome.shell.keybindings switch-to-application-8 "['<Super>8', '<Super>o']"
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-2 "['<Shift><Super>2', '<Shift><Super>t']"
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-3 "['<Shift><Super>3', '<Shift><Super>a']"
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-5 "['<Shift><Super>5', '<Shift><Super>c']"
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-6 "['<Shift><Super>6', '<Shift><Super>v']"
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-8 "['<Shift><Super>8', '<Shift><Super>o']"

# This section for screenshot.
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Shift><Control>4']"

# This section for screen lock.
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Control><Super>q']"

# This section for input source switch. (`AudioMicMute` is f20.)
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['AudioMicMute']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift>AudioMicMute']"
