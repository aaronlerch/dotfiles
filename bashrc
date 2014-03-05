source ~/.aliases
source ~/.functions

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi

if [ -f /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh ]; then
  source /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /opt/boxen/homebrew/etc/bash_completion.d/git-completion.bash ]; then
  source /opt/boxen/homebrew/etc/bash_completion.d/git-completion.bash
fi

# Enable color file listings
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# editor settings
export EDITOR='subl3 -w'

source ~/.prompt
