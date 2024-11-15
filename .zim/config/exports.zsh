export HISTSIZE=10000000

# enhancd
# export ENHANCD_DISABLE_DOT=1
# end enhancd

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-20.jdk/Contents/Home"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fzf end

# Mise
export PATH="$HOME/.local/share/mise/shims:$PATH"

# Misc
export PATH="/usr/local/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"