export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/bin:$PATH"
PROMPT='
%F{white}-------%f
%K{white}%F{black}%n@%m%f%k%F{white}:%f %F{6}%~%f
$'

# ls コマンドを色付きに
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ll='ls -lGF'
alias ls='ls -GF'
alias al='ls -alGF'
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
GIT_PS1_SHOWUPSTREAM=autoa

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{white}---%f
%K{white}%F{black}%n@%m%f%k%F{white}:%f %F{6}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# git ignore file をいい感じに取ってきてくれるAPI
function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/

## 天気
alias tenki="curl -s http://wttr.in/shinjuku\?n4"
alias tenki2="curl -s http://v2.wttr.in/shinjuku"

# taskfile
# eval "$(task --completion zsh)"export PATH="$HOME/.pyenv/bin:$PATH"

# pyenv の設定
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
