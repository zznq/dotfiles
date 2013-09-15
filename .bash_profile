# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# User specific environment and startup programs
PATH=$PATH:/usr/local/bin:/usr/bin

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Projects/libs/node/bin:$HOME/Projects/libs/android-studio/bin:/usr/local/heroku/bin

export PATH
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ "$(uname -s)" == "Linux" ]; then
  export QMAKE=/usr/bin/qmake-qt4
  export PGDATA=/var/lib/postgres/data
elif [ "$(uname -s)" == "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  export PGDATA=/usr/local/var/postgres postgres
fi

alias be='bundle exec'
alias brake='bundle exec rake'
