# Homebrew expects some of these paths to be in place
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

# Activate rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable command line colors, and set some better color defaults for ls
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Add some personal customization, if available
if [[ -f "$HOME/.bash_prompt" ]]; then source "$HOME/.bash_prompt"; fi
if [[ -f "$HOME/.bash_aliases" ]]; then source "$HOME/.bash_aliases"; fi
