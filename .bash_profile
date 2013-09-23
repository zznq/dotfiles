# .bash_profile

# Get the aliases
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# load extra files
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# OS specific exports
if [ "$(uname -s)" == "Linux" ]; then
  export QMAKE=/usr/bin/qmake-qt4
  export PGDATA=/var/lib/postgres/data
elif [ "$(uname -s)" == "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  export PGDATA=/usr/local/var/postgres postgres
fi
