
#bash.exe
export SSH_AUTH_SOCK=/tmp/.ssh-socket
echo ;
echo Starting connection with ssh-agent...
ssh-add -l 2>&1 >/dev/null
if [ $? = 2 ]; then
  rm -f /tmp/.ssh-script /tmp/.ssh-agent-pid /tmp/.ssh-socket
  # Exit status 2 means couldn't connect to ssh-agent; start one now
  echo Creating new ssh-agent...
  ssh-agent -a $SSH_AUTH_SOCK > /tmp/.ssh-script
  . /tmp/.ssh-script
  echo $SSH_AGENT_PID > /tmp/.ssh-agent-pid
  ssh-add;
  echo ssh-agent set up successfully.
  ssh-add -l
fi
alias la='ls -lah --color'



# Кирилица
alias ls='ls --show-control-chars'


# алиасы для git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '