alias ll="ls -l"
alias la="ll -la"
alias spell="aspell"
alias sl="ls"
alias mvi="mvim --remote-tab"
alias sshtv="ssh tv@tvbox"
alias sshssl="ssh disnet@gforge.ssllab.org"
alias mysql="mysql -u timd -p"
alias python="/usr/local/bin/python"
alias rhino="java -cp ~/lib/js.jar org.mozilla.javascript.tools.shell.Main"
alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox"
alias sshriver="ssh disnet@riverdance.cse.ucsc.edu"

alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='sudo /opt/local/bin/mysqladmin5 -u root -p shutdown'

alias ffdev='/Applications/Firefox.app/Contents/MacOS/firefox-bin -no-remote -P dev &'

set -o vi
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/subversion/bin:$PATH
export PATH=/Users/tim/usr/scala/bin:$PATH
export PATH=/Users/tim/usr/scheme/bin:$PATH
export PATH=~/usr/bin:$PATH
export PATH=~/dev/narwhal/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export EDITOR=/opt/local/bin/vi
export TOMCAT_HOME=/Users/tim/apps/apache-tomcat-6.0.18
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.4.2-leopard/Home
export SCALA_HOME=/Users/tim/usr/scala
export ANT_OPTS="$ANT_OPTS -Dscala.home=$SCALA_HOME"
export M2_HOME=/opt/local/share/java/maven2
export ESCTOOLS_RELEASE=/Users/tim/usr/escjava
export SIMPLIFY=$ESCTOOLS_RELEASE/Simplify-1.5.5.macosx


test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Setting PATH for MacPython 3.0
# The orginal version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.0/bin:${PATH}"
PATH="/usr/local/mysql/bin/:${PATH}"
export PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

##
# Your previous /Users/tim/.profile file was backed up as /Users/tim/.profile.macports-saved_2009-09-14_at_17:21:42
##

# MacPorts Installer addition on 2009-09-14_at_17:21:42: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/tim/.profile file was backed up as /Users/tim/.profile.macports-saved_2009-10-13_at_01:09:11
##

# MacPorts Installer addition on 2009-10-13_at_01:09:11: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

