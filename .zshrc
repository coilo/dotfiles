export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export KCODE=u
export AUTOFEATURE=true
export CLICOLOR=true

setopt auto_cd
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_pushd
setopt brace_ccl
setopt list_packed
setopt list_types
setopt nobeep
setopt no_tify
setopt prompt_subst

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt bang_hist
setopt extended_history
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history

typeset -U path

fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' verbose yes
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:sudo:*'  command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

if [[ -f $HOME/.zsh/antigen/antigen.zsh ]]; then
  source $HOME/.zsh/antigen/antigen.zsh

  antigen use oh-my-zsh

  antigen bundle git
  antigen bundle heroku
  antigen bundle pip
  antigen bundle lein
  antigen bundle command-not-found

  antigen-theme  robbyrussell
  antigen-bundle zsh-users/zsh-syntax-highlighting
  antigen-bundle zsh-users/zsh-completions
  antigen-apply  
fi

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
