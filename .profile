alias ll="ls -l"
alias sl="ls"
alias mvimr="mvim --remote-tab"
alias sshtv="ssh tv@tvbox"

set -o vi
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR=/usr/bin/vi
export PATH="/Applications/groovy-1.5.7/bin:$PATH"

test -r /sw/bin/init.sh && . /sw/bin/init.sh
