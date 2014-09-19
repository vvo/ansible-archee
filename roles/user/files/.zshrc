# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract hub grunt npm golang autojump archlinux)

source $ZSH/oh-my-zsh.sh
unset HISTFILESIZE
HISTSIZE=10000000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a; history -n'
unsetopt correct_all

pkill -f syndaemon
syndaemon -d -t -i 0.2 -K -R
synclient HorizTwoFingerScroll=1
#synclient MaxTapTime=0

alias thunar="dbus-launch thunar"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias scrot="escrotum"
alias s="subl3"

[[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh
source /etc/profile.d/vte.sh
unalias gm
