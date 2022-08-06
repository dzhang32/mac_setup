# New Mac setup

Steps for setting up my MacBook pro (Intel, 2019), running Big Sur (11.6.1), for personal use and bioinformatics analyses.

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
- [Alfred](https://formulae.brew.sh/cask/alfred#default)
- [Bartender](https://formulae.brew.sh/cask/bartender#default)
- [Calibre](https://formulae.brew.sh/cask/calibre#default)
- [Docker](https://formulae.brew.sh/cask/docker#default)
- [Fibridi](https://formulae.brew.sh/formula/fribidi#default)*
- [Flux](https://formulae.brew.sh/cask/flux#default)
- [Google Chrome](https://formulae.brew.sh/cask/google-chrome)
- [Google Drive](https://formulae.brew.sh/cask/google-drive#default)
- [harfbuzz](https://formulae.brew.sh/formula/harfbuzz#default)*
- [htop](https://formulae.brew.sh/formula/htop#default)
- [Inkscape](https://formulae.brew.sh/cask/inkscape#default)
- [libgit2](https://formulae.brew.sh/formula/libgit2#default)*
- [libtiff](https://formulae.brew.sh/formula/libtiff#default)*
- [mariadb-connector-c](https://formulae.brew.sh/formula/mariadb-connector-c#default)*
- [miniconda](https://formulae.brew.sh/cask/miniconda#default)
- [nano](https://formulae.brew.sh/formula/nano#default)
- [Notion](https://formulae.brew.sh/cask/notion#default)
- [openssl](https://formulae.brew.sh/formula/openssl@3#default)*
- [postbird](https://formulae.brew.sh/cask/postbird#default)
- [pre-commit](https://formulae.brew.sh/formula/pre-commit)
- [qBittorrent](https://formulae.brew.sh/cask/qbittorrent#default)
- [R](https://formulae.brew.sh/formula/r#default)
- [R Studio](https://formulae.brew.sh/cask/rstudio#default)
- [Slack](https://formulae.brew.sh/cask/slack#default)
- [Spotify](https://formulae.brew.sh/cask/spotify#default)
- [Starship](https://formulae.brew.sh/formula/starship#default)
- [stats](https://formulae.brew.sh/cask/stats#default)
- [Sublime Text](https://formulae.brew.sh/cask/sublime-text#default)
- [VLS](https://formulae.brew.sh/cask/vlc#default)
- [VS Code](https://formulae.brew.sh/cask/visual-studio-code#default)
- [Whatsapp](https://formulae.brew.sh/cask/whatsapp#default)
- [zsh-autosuggestions](https://formulae.brew.sh/formula/zsh-autosuggestions#default)
- [zsh-syntax-highlighting](https://formulae.brew.sh/formula/zsh-syntax-highlighting#default)
- [Zoom](https://formulae.brew.sh/cask/zoom)

*required for installation of `R` packages

### Using App Store

- [Spark](https://sparkmailapp.com)

### Other

- [Cisco VPN client](https://www.ucl.ac.uk/isd/how-to/connecting-to-ucl-vpn-macos-11big-sur)
- [MS Office 365](https://www.office.com/)
- [Sophos](https://www.ucl.ac.uk/isd/how-to/how-to-install-sophos-for-mac)
- [PostgreSQL](https://postgresapp.com/downloads.html)

### Alfred workflows

- Set Alfred default hotkey to *Cmd + Space*, replacing Spotlight.
- [Caffeinate Control](http://www.packal.org/workflow/caffeinate-control)
- [Word Search](https://www.packal.org/workflow/word-search)
- [GitHub repos](http://www.packal.org/workflow/github-repos)
- [convert](https://github.com/deanishe/alfred-convert)

### VS Code extensions

- Better TOML
- Bracket Pair Colorizer 2
- markdownlint
- Python
- Python Docstring Generator

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

### Google drive

- Sync `dz_home` from Google Drive to local by setting directory to available offline
- Copy `dz_home` directory to `~` via `cp` in terminal*
- Sync local `dz_home` folder with Google Drive: *Google Drive -> Folders from your computer -> Add folder -> dz_home*
- Correct any exceptions that could not be synced locally (e.g. `.gsheets`)

*Downloading straight from Google Drive splits directorys in multiple `.zip` files

### 1Password

- Fill login or Show 1Password shortcut: *Cmd + /*

### Sublime Text

- Install Package Control
- Using Package Control, install [WordCount](https://packagecontrol.io/packages/WordCount)
- Set `.txt`, `.yml` and `.md` files to open through Sublime by default

## Programming config

### ~/.config/starship.toml

```toml
[directory]
truncate_to_repo = true
truncation_length = 3
truncation_symbol = "…/"

[conda]
format = "[$symbol$environment](bold green) "

[python]
format = "[$symbol$version](bold yellow) "

[git_status]
conflicted = "🏳"
ahead = "🏎💨"
behind = "😰"
diverged = "😵"
untracked = "🤷‍"
stashed = "📦"
modified = "📝"
staged = '[++\($count\)](green)'
renamed = "👅"
deleted = "🗑"

[username]
style_user = "white"
format = "[$user]($style) "
show_always = false
```

### ~/.zshrc

```bash
# aliases
alias ll='ls -alh'
alias driserver='ssh driuser@ip_address'
alias mrserver='ssh dzhang@ip_address'
alias tunnel_mrserver='ssh -X -N -f -L localhost:8787:localhost:8787 dzhang@ip_address'
alias tunnel_rocker_driserver='ssh -X -N -f -L localhost:8888:localhost:8888 driuser@ip_address'
alias tunnel_rocker_mrserver='ssh -X -N -f -L localhost:8888:localhost:8888 dzhang@ip_address'
alias cd_phd='cd ~/dz_home/work/phd/'

# autocomplete and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"
```

- Run `conda init zsh`, which will modify `~/.zshrc` and enable `conda activate` for managing venvs. 

### ~/.vimrc

```bash
set number
syntax on
set background=dark
colorscheme gruvbox
```

### R packages

```R
# install base packages
source("https://raw.githubusercontent.com/dzhang32/bioc_docker/main/setup_r_packages.R")
```

### R/git config

```R
# use dzhang32/rutils::setup_r_git(append = FALSE) to setup config defaults
rutils::setup_r_git(append = FALSE)
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
