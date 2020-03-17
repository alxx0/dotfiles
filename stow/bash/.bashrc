# .bashrc
# This is mainly meant to be run on Arch Linux,
# but it is also compatible with Mac, provided that
# you have coreutils installed through Homebrew

# Disable ctrl+s terminal pausing (annoying feature)
stty -ixon 

# Set environment variables which may or may not be used
export EDITOR='nvim'
export BROWSER='brave'
export TERMINAL='urxvt'

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# History size
HISTSIZE=1000
HISTFILESIZE=2000

# Use 'gls' instead of 'ls' on Mac
# gls is the name of the binary that Homebrew installs when you install coreutils
if [ `uname -s` = "Darwin" ]; then
    LS="gls"
else 
    LS="ls"
fi

# Coloured ls and other commands
alias ls='${LS} -p --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Aliases for useful commands
alias v=nvim
alias p=pacman
alias pa=pacaur # Or other AUR helper
alias s=systemctl

# Enable vim mode
set -o vi

# Colored GCC warnings and errors (just in case)
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# For my notes file
alias notes="$EDITOR ~/.notes"

# Bash prompt (from bashrcgenerator.net)
export PS1="\[\033[38;5;57m\][\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;27m\]\u\[$(tput sgr0)\]\[\033[38;5;39m\]@\[$(tput sgr0)\]\[\033[38;5;51m\]\h\[$(tput sgr0)\]\[\033[38;5;2m\]:\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;57m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;196m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
