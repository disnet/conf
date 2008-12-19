alias ll="ls -l"
alias mvimr="mvim --remote-tab"
alias sshtv="ssh tv@tvbox"

set -o vi
export PATH=/opt/local/bin:/opt/local/sbin:$PATH


test -r /sw/bin/init.sh && . /sw/bin/init.sh
