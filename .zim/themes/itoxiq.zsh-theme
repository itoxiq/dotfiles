if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} x%{$fg_bold[blue]%}"

typeset -gA git_info
if (( ${+functions[git-info]} )); then
  zstyle ':zim:git-info:branch' format '%b'
  zstyle ':zim:git-info:commit' format 'HEAD %F{green}(%c)'
  zstyle ':zim:git-info:action' format ' %F{yellow}(${(U):-%s})'
  zstyle ':zim:git-info:stashed' format '\\\$'
  zstyle ':zim:git-info:unindexed' format '!'
  zstyle ':zim:git-info:indexed' format '+'
  zstyle ':zim:git-info:ahead' format '>'
  zstyle ':zim:git-info:behind' format '<'
  zstyle ':zim:git-info:keys' format \
      'status' '%S%I%i%A%B' \
      'prompt' 'on %%B%F{magenta}%b%c%s${(e)git_info[status]:+" %F{red}[${(e)git_info[status]}]"}%f%%b '
  add-zsh-hook precmd git-info
fi

PS1='%F{green}{%{$(rvm current 2>/dev/null || rbenv version-name 2>/dev/null)%}} %{$reset_color%}%{${fg[green]}%}%1~ %{$reset_color%}%{${fg_bold[$CARETCOLOR]}%}%{${reset_color}%}${(e)git_info[prompt]}%{$reset_color%}'

RPS1="${return_code}"
