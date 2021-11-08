# New Mac setup

Steps for setting up my MacBook pro (intel, 2019), running Big Sur (11.6.1), for personal use and bioinformatics. 

## Installing applications

### HomeBrew

```bash

# from https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

### Using HomeBrew

- [1Password](https://formulae.brew.sh/cask/1password#default)
- [Alfred](https://formulae.brew.sh/cask/alfred#default)
- [Bartender](https://formulae.brew.sh/cask/bartender#default)
- [Calibre](https://formulae.brew.sh/cask/calibre#default)
- [Docker](https://formulae.brew.sh/cask/docker#default)
- [Flux](https://formulae.brew.sh/cask/flux#default)
- [Google Drive](https://formulae.brew.sh/cask/google-drive#default)
- [Inkscape](https://formulae.brew.sh/cask/inkscape#default)
- [htop](https://formulae.brew.sh/formula/htop#default)
- [libgit2](https://formulae.brew.sh/formula/libgit2#default)*
- [Mendeley](https://formulae.brew.sh/cask/mendeley#default)
- [miniconda](https://formulae.brew.sh/cask/miniconda#default)
- [nano](https://www.nano-editor.org)
- [NordVPN](https://formulae.brew.sh/cask/nordvpn#default)
- [Notion](https://formulae.brew.sh/cask/notion#default)
- [openssl](https://formulae.brew.sh/formula/openssl@3#default)*
- [R](https://formulae.brew.sh/formula/r#default)
- [R Studio](https://formulae.brew.sh/cask/rstudio#default)
- [Slack](https://formulae.brew.sh/cask/slack#default)
- [Spotify](https://formulae.brew.sh/cask/spotify#default)
- [Starship](https://formulae.brew.sh/formula/starship#default)
- [VLS](https://formulae.brew.sh/cask/vlc#default)
- [VS Code](https://formulae.brew.sh/cask/visual-studio-code#default)
- [Whatsapp](https://formulae.brew.sh/cask/whatsapp#default)
- [Zoom](https://formulae.brew.sh/cask/zoom#default)
- [zsh-autosuggestions](https://formulae.brew.sh/formula/zsh-autosuggestions#default)
- [zsh-syntax-highlighting](https://formulae.brew.sh/formula/zsh-syntax-highlighting#default)

*required for installation of some downstream `R` packages

### Using App Store

- [Spark](https://sparkmailapp.com)

### Other

- [Cisco VPN client](https://www.ucl.ac.uk/isd/how-to/connecting-to-ucl-vpn-macos-11big-sur)
- [FileZilla](https://filezilla-project.org/download.php?type=client)
- [MS Office 365](https://www.office.com/)
- [Sophos](https://www.ucl.ac.uk/isd/how-to/how-to-install-sophos-for-mac)

### Alfred workflows

- Set Alfred default hotkey, replacing Spotlight. 
- [Caffeinate Control](http://www.packal.org/workflow/caffeinate-control)
- [Word Search](https://www.packal.org/workflow/word-search)
- [GitHub repos](http://www.packal.org/workflow/github-repos)
- [convert](https://github.com/deanishe/alfred-convert)

### VS Code extensions

- Better TOML
- Bracket Pair Colorizer 2
- markdownlint
- Python
- Python Docstring Generator AI

## General settings

### System preferences

- Trackpad:
  - Tap to click: check
  - Swipe full screen: 4 fingers
- Accessibility:
  - Pointer control: 3 finger drag
- Docker & Menu Bar: 
  - Auto hide Dock: check

### Safari

- AutoFill: uncheck all

### Google drive

- Sync `dz_home` by setting it as available offline
- Copy previous `dz_home` directory to `~` via `cp` (download from Google drive splits zip files)
- Sync local `dz_home` folder with Google Drive: *Google Drive -> Folders from your computer -> Add folder*
- Correct any exceptions docs that could not be copied locally (e.g. `.gsheets`)

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
alias driserver='ssh driuser@128.40.163.130'
alias mrserver='ssh dzhang@144.82.49.248'
alias tunnel_mrserver='ssh -X -N -f -L localhost:8787:localhost:8787 dzhang@144.82.49.248'
alias tunnel_docker='ssh -X -N -f -L localhost:8888:localhost:8888 dzhang@144.82.49.248'
alias cd_phd='cd ~/dz_home/work/phd/'

# autocomplete and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"
```

### ~/.nanorc

```bash
# reference config from HomeBrew nano
# you may need to modify the local path to HomeBrews's Cellar
include "/usr/local/Cellar/nano/*/share/nano/*.nanorc"
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

## Acknowledgements

This workflow was inspired by Thomas Beuzen's [gist](https://gist.github.com/TomasBeuzen/31e934a6ee2f1ab06c7e477478ceeb97). 

