export PATH="/usr/bin:/bin:$PATH:$HOME/.yarn/bin:$HOME/.cargo/bin"

alias s="git status"
alias b="git branch"
alias a="git add $1"
alias c="git commit $1"
alias push="git push $1"
alias p="git pull"
alias g="git log --all --decorate --oneline --graph"
alias s.="nautilus ."
alias np="pnpm $1"

alias debug="google-chrome --remote-debugging-port=9222"

alias open="xdg-open $1"
alias quiet="sudo i8kfan 0 0"
alias mid="sudo i8kfan 1 1"
alias high="sudo i8kfan 2 2"

alias ls="exa $1"
alias l="exa -l $1"
#alias fd="fdfind"
alias space="du -sh $1"

alias tao="bluetoothctl connect 00:80:79:59:4A:E4"
alias taotao="bluetoothctl disconnect 00:80:79:59:4A:E4"
alias jab="bluetoothctl connect 50:1A:A5:36:87:00"
alias jabjab="bluetoothctl disconnect 50:1A:A5:36:87:00"

#starship init fish | source
#fnm env | source
