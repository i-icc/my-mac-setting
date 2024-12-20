export PATH=$HOME/.nodebrew/current/bin:$PATH

PROMPT='
%K{white}%F{black}%n@%m%f%k%F{white}:%f %F{6}%~%f
$ '

# ls コマンドを色付きに
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ll='ls -lGF'
alias ls='ls -GF'

alias hw='echo Hello world'

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%K{white}%F{black}%n@%m%f%k%F{white}:%f %F{6}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '


eval "$(pyenv init --path)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shintaichito/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shintaichito/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shintaichito/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shintaichito/google-cloud-sdk/completion.zsh.inc'; fi