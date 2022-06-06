# New Mac setup

Steps for setting up my MacBook pro (Intel, 2019), running Mojave (11.6.1), for work.

## Install applications

### HomeBrew

```bash
# from https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
```

### Using HomeBrew

- [1Password](https://formulae.brew.sh/cask/1password#default)
- [Adobe Acrobat Reader DC](https://formulae.brew.sh/cask/adobe-acrobat-reader)
- [htop](https://formulae.brew.sh/formula/htop#default)
- [miniconda](https://formulae.brew.sh/cask/miniconda#default)
- [nano](https://formulae.brew.sh/formula/nano#default)
- [Slack](https://formulae.brew.sh/cask/slack#default)
- [Sublime Text](https://formulae.brew.sh/cask/sublime-text#default)
- [VS Code](https://formulae.brew.sh/cask/visual-studio-code#default)
- [zsh-autosuggestions](https://formulae.brew.sh/formula/zsh-autosuggestions#default)
- [zsh-syntax-highlighting](https://formulae.brew.sh/formula/zsh-syntax-highlighting#default)

*required for installation of `R` packages

### Other

- [MS Office 365](https://www.office.com/)

### VS Code extensions

- Better TOML
- markdownlint
- Python
- Python Docstring Generator
- Tabnine

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

### Safari

- AutoFill: uncheck all
- Privacy
  - Prevent cross-site tracking: uncheck

### 1Password

- Fill login or Show 1Password shortcut: *Cmd + /*

### Sublime Text

- Install Package Control
- Using Package Control, install [WordCount](https://packagecontrol.io/packages/WordCount)
- Set `.txt`, `.yml` and `.md` files to open through Sublime by default

## Programming config

### ~/.zshrc

```bash
# aliases
alias ll='ls -alh'

# autocomplete and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"
```

- Run `conda init zsh`, which will modify `~/.zshrc` and enable `conda activate` for managing venvs. 

### ~/.nanorc

```bash
# reference config from HomeBrew nano
# you may need to modify the local path to HomeBrews's Cellar
include "/usr/local/Cellar/nano/*/share/nano/*.nanorc"
```

### Set up SSH keys

```bash
# create ~/.ssh folder
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# create key pair, then add ssh key to GitHub settings
ssh-keygen -t rsa
```

## Acknowledgements

This workflow was inspired by Thomas Beuzen's [gist](https://gist.github.com/TomasBeuzen/31e934a6ee2f1ab06c7e477478ceeb97).
