git clone --bare https://github.com/rengare/dotfiles.git $HOME/.dotfiles.git
echo "dotfiles.git" >> ~/.gitignore
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -L https://get.oh-my.fish | fish

omf install z
omf install sushi

curl -fsSL https://fnm.vercel.app/install | bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


bash -c  "$(wget -qO- https://git.io/vQgMr)"

