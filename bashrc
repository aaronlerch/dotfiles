. ~/.aliases
. ~/.functions

if [ -f /opt/boxen/env.sh ]; then
  . /opt/boxen/env.sh
fi

if [ -f /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh ]; then
  . /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh
fi

. ~/.prompt
