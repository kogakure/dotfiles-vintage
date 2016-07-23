function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

bracket_color="%{$fg[white]%}"
ruby_color="%{$fg[red]%}"
nvm_color="%{$fg[yellow]%}"
dir_color="%{$fg[blue]%}"
git_branch_color="%{$fg[green]%}"
git_clean_color="%{$fg[green]%}"
git_dirty_color="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$bracket_color [$git_branch_color"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="$bracket_color] $git_clean_color✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$bracket_color] $git_dirty_color✗%{$reset_color%}"
ZSG_THEME_GIT_UPSTREAM=" %{$fg[red]%}📡%{$reset_color%} "

# Ruby Version
if which rvm-prompt &> /dev/null; then
  ruby_version="$ruby_color\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    ruby_version="$ruby_color\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}%{$reset_color%}"
  fi
fi

# Node Version
if which nvm &> /dev/null; then
  nvm_version="$nvm_color\${\$(nvm version)}%{$reset_color%}"
fi

# Is Git repository upstream?
check_upstream() {
  remote="$(git remote | grep upstream)"
  if [ "$remote" = "upstream" ]; then
    echo "$ZSG_THEME_GIT_UPSTREAM"
  fi
}

prompt_user="%{$fg[yellow]%}%n%{$reset_color%}"
box="%{$fg[cyan]%}$(box_name)%{$reset_color%}"
git="\$(git_prompt_info)%{$reset_color%}"
git_upstream="\$(check_upstream 2>/dev/null)"
dir="$dir_color%~%{$reset_color%}"

prompt_start=""
prompt_end="💬  "

# Put it all together!
RPROMPT="$ruby_version $nvm_version"
PROMPT="
$dir$git_upstream$git
$prompt_end"
