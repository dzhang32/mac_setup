# Mac setup

## Setup scripts

```bash
chmod u+x scripts/install_brew_packages.sh && source install_brew_packages.sh
chmod u+x scripts/setup_mac.sh && source scripts/setup_mac.sh
chmod u+x scripts/setup_ssh_keys.sh && source scripts/setup_ssh_keys.sh
```

## General settings

### System preferences

- Accessibility:
  - Pointer control: 3 finger drag
- Trackpad:
  - Tap to click: check
- Docker & Menu Bar:
  - Auto-hide Dock: check
  - Show recent applications: uncheck
- Keyboard:
  - Correct spelling automatically: uncheck

### Terminal

- Profiles:
  - Columns: 160
  - Rows: 48
- Text:
  - Font
    - Size: 14

### Brave

- Go to the URL: brave://password-manager/settings
- Uncheck Offer to save passwords

### Sublime Text

- Sublime text -> Settings

```bash
{
  "ignored_packages": [], // Enable VIM
  "vintage_start_in_command_mode": false, // Don't start in INSERT mode 
  "font_size": 14, // Increase font size
}
```

- Set `.txt`, `.yml` and `.md` files to open through Sublime by default

## Acknowledgements

This workflow was inspired by Thomas Beuzen's [gist](https://gist.github.com/TomasBeuzen/31e934a6ee2f1ab06c7e477478ceeb97).
