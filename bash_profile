#!/bin/bash

# crashplan
crashplan () { 
  case "$1" in
    "load")
      sudo launchctl load /Library/LaunchDaemons/com.crashplan.engine.plist;
      ruby -e "sleep 1";
    ;;
    "unload")
      sudo launchctl unload /Library/LaunchDaemons/com.crashplan.engine.plist;
    ;;
    *)
      echo -e "Usage:\n   crashplan load\n   crashplan unload\n";
    ;;
  esac
  echo -e "Current status:";
  ps auxww | head -n 1
  ps auxww | grep -i CrashPlanService | grep ^root;
}

# path(s)
export PATH="/usr/local/sbin:/usr/local/bin:$PATH:~/bin:/opt/opengeo/sdk/bin"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# sencha touch in path
export PATH=/Users/chrisberkhout/bin/Sencha/Cmd/3.0.0.250:$PATH
export SENCHA_CMD_3_0_0="/Users/chrisberkhout/bin/Sencha/Cmd/3.0.0.250"


alias op="open *.tmproj || mate ."

# TextMate
# alias op="open *.tmproj || mate ."

# let more key combos get through iterm to vim, etc.
# http://groups.google.com/group/iterm2-discuss/browse_thread/thread/47700851d59386fb?pli=1
stty -ixon

# vim
export EDITOR="vim"
alias v="vim"

# autotest
alias bat="bundle exec autotest --no-full-after-failed"

# bundler
alias be="bundle exec"
alias bo="bundle open"

# temporary directory
alias tmp="mkdir -p ~/tmp; cd ~/tmp"
 
# Git aliases
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gdv="git diff | view -"
alias gdcv="git diff --cached | view -"
alias grb="git pull --rebase origin master"
alias gup="git push origin master"

# brew & ruby(gems?)
export RUBYLIB="`brew --prefix`/lib:$RUBYLIB"

# node.js
export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"

# bash completion (required for __git_ps1 to work)
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# run ansible from code
source ~/Code/ansible/hacking/env-setup > /dev/null

# color
export CLICOLOR=1

# prompt
function _update_ps1()
{
  export PS1="$(/usr/bin/env python ~/dotfiles/powerline-bash/powerline-bash.py $?)"
}
export PROMPT_COMMAND="_update_ps1"

# EC2 API Tools (brew install ec2-api-tools)
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem 2>/dev/null)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem 2>/dev/null)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"

# Ruby Version Machine
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

