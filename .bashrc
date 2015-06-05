# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# User specific environment and startup programs
PATH=$HOME/.rvm.bin:/usr/local/bin:/usr/bin:$PATH

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Projects/libs/node/bin:$HOME/Projects/libs/android-studio/bin:/usr/local/heroku/bin

export PATH

if [ -s "/usr/local/bin/virtualenvwrapper.sh" ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/projects
  source /usr/local/bin/virtualenvwrapper.sh
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias be='bundle exec'
alias brake='bundle exec rake'
alias fixpg='ln -s /private/var/pgsql_socket/.s.PGSQL.5432 /private/tmp/.s.PGSQL.5432'

alias zake='zeus rake'
alias zspec='zeus rspec'
alias zs='zeus s'

alias gap='git add -p'
alias gnap='git add -N . && git add -p'
alias glp='git log -p'
alias glg='git log --graph --oneline --decorate --color --all'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcl='git clean -f -d'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git pull'
alias glod='git log --oneline --decorate'
alias gp='git push'
alias gpr='git pull --rebase'
alias gst='git status'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias reset-authors='git commit --amend --reset-author -C HEAD'
