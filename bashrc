. ~/.aliases
. ~/.functions

if [ -f $BOXEN_HOME/env.sh ]; then
  . $BOXEN_HOME/env.sh
fi

if [ -f $BOXEN_HOME/homebrew/etc/bash_completion.d/git-prompt.sh ]; then
  . $BOXEN_HOME/homebrew/etc/bash_completion.d/git-prompt.sh
fi

. ~/.prompt
