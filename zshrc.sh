# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/slothsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# -------------------------------------------------

# -- User Config --
export EDITOR=nvim
export HOST_NAME=$(uname -n | sed -e "s/ //g")
export NVIM_CONFIG=~/.config/nvim
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export TERMINAL_CONFIG=~/.config/alacritty/alacritty.yml
export WALLPAPER=~/Pictures/geometric_01.jpg
export WM_CONFIG=~/.config/qtile
export DEV_PATH=~/dev

# -- Aliases
alias ll="ls -l"
alias vv=nvim
alias vcfg="nvim $NVIM_CONFIG"
alias tcfg="nvim $TERMINAL_CONFIG"
alias pcfg="nvim ~/.zshrc"
alias ccfg="nvim $STARSHIP_CONFIG"
alias wcfg="nvim $WM_CONFIG"

# -- Starship Command Line --
eval "$(starship init zsh)"
