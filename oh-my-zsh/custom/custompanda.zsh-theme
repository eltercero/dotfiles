# the svn plugin has to be activated for this to work.
PROMPT='%{$fg_bold[green]%}%p %{$fg[yellow]%}%c %{$fg_bold[green]%}$(git_prompt_info)%{$fg_bold[green]%}$(svn_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%})%{$fg[red]%} ● %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}) "

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[green]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[green]%}"