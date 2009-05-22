alias ll="ls -l"
alias sl="ls"
alias mvimr="mvim --remote-tab"
alias sshtv="ssh tv@tvbox"
alias mysql="mysql -u timd -p"
alias python="/usr/local/bin/python"

set -o vi
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Users/tim/.cabal/bin:$PATH
export PATH=/Users/tim/usr/scala-2.7.4.final/bin:$PATH
export EDITOR=/usr/bin/vi
export TOMCAT_HOME=/Users/tim/apps/apache-tomcat-6.0.18
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Setting PATH for MacPython 3.0
# The orginal version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.0/bin:${PATH}"
PATH="/usr/local/mysql/bin/:${PATH}"
export PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
