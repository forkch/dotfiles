#!/bin/bash
# Load in the git branch prompt script.
source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-flow-completion.bash ]; then
  . ~/.git-flow-completion.bash
fi

export PS1="$PS1error[\D{%H:%M}][$PS1user][\W]\$(__git_ps1)> \[\e]2;[\w]\a\]"
