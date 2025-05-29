##### Copy dotfiles #####

cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/starship.toml ~/.config/starship.toml
cp dotfiles/.gitconfig ~/.gitconfig
cp dotfiles/.gitignore_global ~/.gitignore_global

##### Vim #####

# Download gruvbox colorscheme.
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim --output ~/.vim/colors/gruvbox.vim

##### Rust #####

# Install rustc, cargo and rustup.
rustup-init

# Install rust formatter/linter.
rustup component add rustfmt clippy

rustc --version
cargo --version
rustup --version