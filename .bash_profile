# .bash_profile

for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Projects/libs/node/bin:$HOME/Projects/libs/android-studio/bin:/usr/local/heroku/bin

export PATH
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export QMAKE=/usr/bin/qmake-qt4

export PGDATA=/var/lib/postgres/data

alias be='bundle exec'
alias brake='bundle exec rake'
alias berc='be rspec --color'

