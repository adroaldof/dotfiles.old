# Colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
L_YELLOW="\[\033[1;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[1;34m\]"
NO_COLOUR="\[\033[0m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
BPURPLE="\[\033[1;35m\]"      # Bold Purple

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}✭%{$reset_color%}"

prompt_setup () {
  virtualenv_path="$VIRTUAL_ENV"

  venv_prompt="%{$fg[white]%}(%{$reset_color%}%{$fg[cyan]%}${VIRTUAL_ENV##*/}%{$reset_color%}%{$fg[white]%})%{$reset_color%} "
  base_prompt="%{$fg[yellow]%}%n%{$reset_color%}%{$fg[white]%}@%{$reset_color%}%{$fg[green]%}%m%{$reset_color%}%{$fg[red]%} :%{$reset_color%}%{$fg[white]%} [%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[white]%}] %{$reset_color%}"
  post_prompt="%{$fg[white]%}$%{$reset_color%}%{$fg[white]%}➜%{$reset_color%}  "

  base_prompt_nocolor=$(echo "$venv_prompt" | perl -pe "s/%\{[^}]+\}//g")
  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_precmd)
}

prompt_precmd () {
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  # local prompt_length=${#exp_nocolor}

  local nl=$'\n%{\r%}';

  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && $virtualenv_path != "" ]]; then
    PROMPT="$venv_prompt$base_prompt$gitinfo$nl$post_prompt"
  else
    PROMPT="$base_prompt$gitinfo$nl$post_prompt"
  fi
}

prompt_setup