# Mac setup

Steps for setting up my MacBook pro (Intel, 2019), running Sonoma (14.1.2), for personal use and software development.

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
- [cmake](https://formulae.brew.sh/formula/cmake)*
- [Docker](https://formulae.brew.sh/cask/docker#default)
- [Dropbox](https://formulae.brew.sh/cask/dropbox)
- [Fibridi](https://formulae.brew.sh/formula/fribidi#default)*
- [Flux](https://formulae.brew.sh/cask/flux#default)
- [Google Chrome](https://formulae.brew.sh/cask/google-chrome)
- [harfbuzz](https://formulae.brew.sh/formula/harfbuzz#default)*
- [htop](https://formulae.brew.sh/formula/htop#default)
- [libgit2](https://formulae.brew.sh/formula/libgit2#default)*
- [libtiff](https://formulae.brew.sh/formula/libtiff#default)*
- [mariadb-connector-c](https://formulae.brew.sh/formula/mariadb-connector-c#default)*
- [miniforge](https://formulae.brew.sh/cask/miniforge)
- [Notion](https://formulae.brew.sh/cask/notion#default)
- [openjdk](https://formulae.brew.sh/formula/openjdk)**
- [openssl](https://formulae.brew.sh/formula/openssl@3#default)*
- [pre-commit](https://formulae.brew.sh/formula/pre-commit)
- [pipx](https://formulae.brew.sh/formula/pipx)
- [pyenv](https://formulae.brew.sh/formula/pyenv#default)
- [pyenv-virtualenv](https://formulae.brew.sh/formula/pyenv-virtualenv)
- [qBittorrent](https://formulae.brew.sh/cask/qbittorrent#default)
- [R](https://formulae.brew.sh/formula/r#default)
- [R Studio](https://formulae.brew.sh/cask/rstudio#default)
- [Slack](https://formulae.brew.sh/cask/slack#default)
- [Spotify](https://formulae.brew.sh/cask/spotify#default)
- [Starship](https://formulae.brew.sh/formula/starship#default)
- [Sublime Text](https://formulae.brew.sh/cask/sublime-text#default)
- [VLS](https://formulae.brew.sh/cask/vlc#default)
- [VS Code](https://formulae.brew.sh/cask/visual-studio-code#default)
- [Whatsapp](https://formulae.brew.sh/cask/whatsapp#default)
- [zsh-autosuggestions](https://formulae.brew.sh/formula/zsh-autosuggestions#default)
- [zsh-syntax-highlighting](https://formulae.brew.sh/formula/zsh-syntax-highlighting#default)

*required for installation of `R` packages
**required for installation of `Nextflow`. You may also have to create a [symlink](https://stackoverflow.com/questions/65601196/how-to-brew-install-java) to complete the java installation. 

### Nextflow

Install Nextflow using the recommended [instructions](https://nextflow.io/docs/latest/getstarted.html#installation):

```
curl -s https://get.nextflow.io | bash
chmod +x nextflow
mv nextflow /usr/local/bin/
```

### Alfred workflows

- Set Alfred default hotkey to *Cmd + Space*, replacing Spotlight.
- [caffeinate-control](http://www.packal.org/workflow/caffeinate-control)

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

### Safari

- AutoFill: uncheck all
- Privacy
  - Prevent cross-site tracking: uncheck

### Sublime Text

- Sublime text -> Settings

```
{
  "ignored_packages": [], // Enable VIM
  "vintage_start_in_command_mode": false, // Don't start in INSERT mode 
  "font_size": 14, // Increase font size
}

```

- Set `.txt`, `.yml` and `.md` files to open through Sublime by default

## Configs

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
alias cd_dz='cd ~/dz_home'

# add pyenv to PATH and initialise
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# autocomplete and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"
```

### Conda/mamba

```bash
# modify ~/.zshrc to enable mamba
conda init zsh

# modify ~/.condarc to not activate base env by default
# as we use pyenv to manage python versions usually
# and only use mamba if required
conda config --set auto_activate_base false
```

### pipx/poetry

- Use pipx to install poetry (as [recommended](https://python-poetry.org/docs/))

```
# makes sure pipx can be found in PATH
pipx ensurepath

# pipx is used to install Python CLI applications globally while still isolating them in virtual environments
# we want to ensure poetry is installed globally
pipx install poetry

# ensure below that poetry inherits python version from pyenv
poetry config virtualenvs.prefer-active-python true
```

### Vim

- Download gruvbox theme

```bash
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim --output ~/.vim/colors/gruvbox.vim
```

- Set defaults in `~/.vimrc`

```bash
set number
syntax on
set background=dark
colorscheme gruvbox 
```

### R

- Install essential R packages 

```R
# install base packages
source("https://raw.githubusercontent.com/dzhang32/mac_setup/main/personal/setup_r_packages.R")
```

- Setup R/git config

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
