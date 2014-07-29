# Homebrew expects some of these paths to be in place
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

# Activate rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable command line colors, and set some better color defaults for ls
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"


# == Aliases =====

# Add colors to ls
alias ls='ls -FG'

# List all the things
alias l='ls -laFGh'


# == Prompt =====

# Name the colors we'll be using to make them somewhat readable
ORANGE="\[\e[38;5;214m\]"
YELLOW="\[\e[38;5;228m\]"
CYAN="\[\e[0;36m\]"

WHITE="\[\e[1;37m\]"
LIGHT="\[\e[0;37m\]"
DARK="\[\e[38;5;240m\]"

# Set the prompt
# \u - user
# \h - host
# \w - working directory
export PS1="${ORANGE}\u ${DARK}@ ${YELLOW}\h ${DARK}in ${CYAN}\w ${LIGHT}\$ "
