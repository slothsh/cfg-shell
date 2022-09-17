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

# Paths
export EDITOR=nvim
export HOST_NAME=$(uname -n | sed -e "s/ //g")
export NVIM_CONFIG=~/.config/nvim
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export TERMINAL_CONFIG=~/.config/alacritty/alacritty.yml
export WALLPAPER=~/Pictures/geometric_01.jpg
export WM_CONFIG=~/.config/qtile
export DEV_PATH=~/dev
export CFG_PATH="${DEV_PATH}/cfg"
export PATH="$PATH:/home/slothsh/.local/bin"
export LS_COLORS="$(vivid generate one-dark)"

# vcpkg Paths
export VCPKG_ROOT=/opt/vcpkg
export VCPKG_DEFAULT_TRIPLET="x64-linux"
export VCPKG_DEFAULT_HOST_TRIPLET="x64-linux"

# Ranger config
export RANGER_LOAD_DEFAULT_RC=TRUE

# -- Helper functions
source "${CFG_PATH}/cfg-shell/helpers.sh"

# -- Aliases
alias ll="ls -l --color=auto"
alias lla="ls -la --color=auto"
alias vv=nvim
alias vcfg="nvim $NVIM_CONFIG"
alias tcfg="nvim $TERMINAL_CONFIG"
alias pcfg="nvim ~/.zshrc"
alias ccfg="nvim $STARSHIP_CONFIG"
alias wcfg="nvim $WM_CONFIG"
alias rr="ranger"
alias luamake=/home/slothsh/.local/bin/lua-language-server/3rd/luamake/luamake

# -- Starship Command Line --
eval "$(starship init zsh)"
