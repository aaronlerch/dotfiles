. ~/.aliases
. ~/.functions

if [ -f /opt/boxen/env.sh ]; then
  . /opt/boxen/env.sh
fi

if [ -f /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh ]; then
  . /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh
fi

# Enable color file listings
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# editor settings
export EDITOR='subl3 -w'

. ~/.prompt
