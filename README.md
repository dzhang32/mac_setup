# New Mac setup

Steps for setting up my MacBook (intel, 2019) for personal use and bioinformatics, tested on Big Sur (11.6.1). 

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
- [Mendeley](https://formulae.brew.sh/cask/mendeley#default)
- [nano](https://www.nano-editor.org)
- [NordVPN](https://formulae.brew.sh/cask/nordvpn#default)
- [Notion](https://formulae.brew.sh/cask/notion#default)
- python # TODO - check pyenv
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

### Using App Store

- Spark

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

### VS Code

## Programming defaults 

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
# you may need to modify the local path to HomeBrews's cellar
include "/usr/local/Cellar/nano/*/share/nano/*.nanorc"
```

### VS Code extensions

- Better TOML
- Bracket Pair Colorizer 2
- markdownlint
- Python
- Python Docstring Generator AI

# Acknowledgements

This workflow was inspired by Thomas Beuzen's [gist](https://gist.github.com/TomasBeuzen/31e934a6ee2f1ab06c7e477478ceeb97). 

