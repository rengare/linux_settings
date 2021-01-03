stty start undef
stty stop undef
setopt noflowcontrol
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH
export PATH="$PATH:$HOME/workspace/flutter/bin"
export PATH="$PATH:$HOME/.cargo/bin"

source /etc/profile.d/vte.sh

export ZSH="$HOME/.oh-my-zsh"

. ~/programs/z.sh

ZSH_THEME="arrow"

plugins=(
  git
  zsh-autosuggestions
  npm
  cargo
	rustup
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias s="git status"
alias b="git branch"
alias a="git add $1"
alias c="git commit $1"
alias push="git push $1"
alias p="git pull"
alias g="git log --all --decorate --oneline --graph"
alias s.="nautilus ."

alias debug="google-chrome --remote-debugging-port=9222"

alias nvidia="system76-power graphics nvidia"
alias intel="system76-power graphics intel"

alias music="cmus"
alias open="xdg-open $1"
alias fan="sudo $HOME/workspace/dell-bios-fan-control/dell.sh"
alias quiet="sudo i8kfan 0 0"
alias mid="sudo i8kfan 1 1"
alias high="sudo i8kfan 2 2"

alias stream_chat="firefox https://dashboard.twitch.tv/popout/u/$HOMEgaret/stream-manager/chat"
alias stream_manager="firefox https://dashboard.twitch.tv/u/$HOMEgaret/stream-manager"
alias fan_bios="sudo $HOME/workspace/dell-bios-fan-control/dell-bios-fan-control 0"

alias ls="exa $1"
alias ps="procs"
alias catt="bat"
alias grep="rg"
alias space="du -sh $1"
alias tao="bluetoothctl connect 00:80:79:59:4A:E4"
alias taotao="bluetoothctl disconnect 00:80:79:59:4A:E4"
alias jab="bluetoothctl connect 50:1A:A5:36:87:00"
alias jabjab="bluetoothctl disconnect 50:1A:A5:36:87:00"
alias fd="fdfind"
alias count="ls -1 | wc -l"
alias transcode='for i in *.mp4; do ffmpeg -i $i -vcodec dnxhd -acodec pcm_s16le -s 1920x1080 -r 30000/1001 -b:v 36M -pix_fmt yuv422p -f mov out_$i.mov; done'
