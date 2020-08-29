source ~/.aliases
source ~/.functions

# Enable hiding entries prefixed with a space
export HISTCONTROL=ignorespace

# Enable color file listings
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# editor settings
#export EDITOR='subl3 -w'

# source ~/.prompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
