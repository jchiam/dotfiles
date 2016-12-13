# Installing dotfiles
1. Clone project into `~/dotfiles`
1. Run `install.sh`

# What `install.sh` does
1. Moves the following dotfiles into `dotfiles_old`
  - .vim
  - .vimrc
  - .bashrc
  - .zshrc
1. Create symlinks to dotfiles in `~/dotfiles` from `$HOME`

