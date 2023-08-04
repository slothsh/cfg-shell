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

# -- User Environemnt --
[ -f ~/.config/zsh/.zshenv ] && source ~/.config/zsh/.zshenv

# -- Aliases --
alias ll="ls -l --color=auto"
alias lla="ls -la --color=auto"
alias vv=nvim
alias vcfg="nvim $NVIM_CONFIG"
alias tcfg="nvim $TERMINAL_CONFIG"
alias pcfg="nvim ~/.zshrc"
alias ccfg="nvim $STARSHIP_CONFIG"
alias wcfg="nvim $WM_CONFIG"
alias xcfg="nvim $TMUX_CONFIG"
alias pcfg="nvim $PICOM_CONFIG"
alias vw="nvim $WIKI_PATH"
alias rr="ranger"
alias cpwd="pwd | xclip -selection clipboard"
alias xc="xclip -selection clipboard"
alias luamake=/home/slothsh/.local/bin/lua-language-server/3rd/luamake/luamake
alias zenv="nvim ~/.config/zsh/.zshenv"
alias open="thunar"
alias cat="bat --paging=never"

# -- Starship Command Line --
eval "$(starship init zsh)"

# -- pyenv Config --
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

