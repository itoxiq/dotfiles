# File System
alias o="open"

# bat
alias cat="bat"

# LS / K Config
alias ls='k --no-vcs'
alias lsa='k -a'

# TMUX
alias tnew='tmux new -s'
alias tatch='tmux attach-session -t'

# Docker
alias dc='docker compose'
alias dcu='dc up -d'
alias docker-down='docker stop $(docker ps -aq)'

# Postgres
alias pg-start='brew services start postgresql@14'
alias pg-stop='brew services stop postgresql@14'

# Python -> reminder use pyenv
alias mkvenv='python3 -m venv venv'
alias venv='source ~/.virtualenvs/venv/bin/activate'
alias venv-stop="deactivate"

# MISC
alias yc='yarn --check-files'
