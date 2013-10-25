# .bashrc

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# User specific environment and startup programs
PATH=$HOME/.rvm.bin:/usr/local/bin:/usr/bin:$PATH

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Projects/libs/node/bin:$HOME/Projects/libs/android-studio/bin:/usr/local/heroku/bin

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias be='bundle exec'
alias brake='bundle exec rake'
alias fixpg='ln -s /private/var/pgsql_socket/.s.PGSQL.5432 /private/tmp/.s.PGSQL.5432'

alias zake='zeus rake'
alias zspec='zeus rspec'
alias zs='zeus s'
