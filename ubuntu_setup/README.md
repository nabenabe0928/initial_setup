# Arrange the app dock
- 1: Folder
- 2: Terminal
- 3: Settings
- 4: System Monitor
- 5: Google Chrome
- 6: VSCode
- 7: PDF Viewer
- 8: Obsidian

Then, run `./ubuntu_setup/modify_keybindings.sh`.

# Terminal
- Assign ctrl+number to switch tab
- Assign ctrl+down/up to go to previous/next tab

# Apply keyd

```shell
sudo cp ubuntu_setup/default.conf /etc/keyd/default.conf && sudo keyd reload
```
