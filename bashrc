# .bashrc

echo "running /root/.bashrc updated by John Kraus August 16, 2015"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll="ls -ltr"
alias lll="ls -la | less"
alias llll="ls -latr | less"
alias ltr="ls -latr"
alias latr="ls -latr"
alias rh="cd /media/sf_Documents/linux_academy/rhcsa7"
alias ws='cd /usr/local/share/workspace'
alias max='cd /usr/local/share/workspace/maxcryptoblog'
export ws=/usr/local/share/workspace
alias pglog='cd /var/lib/pgsql/9.3/data/pg_log'
export pglog='/var/lib/pgsql/9.3/data/pg_log'

POSTGRESQL_HOME=/usr/pgsql-9.3

PATH="/usr/local/heroku/bin:$PATH"
GRADLE_HOME=/usr/share/gradle-2.6
# export $GRADLE_HOME
# echo $GRADLE_HOME
PATH=$PATH:$GRADLE_HOME/bin:$POSTGRESQL_HOME/bin
# export $PATH


# http://stackoverflow.com/questions/1378926/list-of-methods-for-python-shell

# enable python autocomplete with code in .pythonrc
PYTHONSTARTUP=$HOME/.pythonrc

echo "to fix vboxclient the virtualbox kernel service is not running use"
echo "sudo /etc/init.d/vboxadd setup"


alias gtd='./gtd'
alias gtshow='gtd show'
alias gtwork='gtd show today,work'
alias gthome='gtd show today,home'
alias gtlate='gtd show -today'
alias gta='gtd add'
alias gtdone='gtd close'
alias gtu='gtd update'
