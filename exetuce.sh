sudo apt install htop tilix tlp chrome-gnome-shell lm-sensors git gnome-tweak-tool zsh neovim goldendict translate-shell fd-find bat ripgrep exa -y
sudo apt update && sudo apt upgrade -y

wget https://github.com/Ulauncher/Ulauncher/releases/download/5.9.0/ulauncher_5.9.0_all.deb

gsettings set org.gnome.desktop.wm.preferences button-layout close,minimize,maximize:appmenu
gsettings set org.gnome.desktop.interface clock-format '24h'

cp -rf * ~/
rm -rf ~/applications
cp -rf ./applications ~/.local/share/

sudo apt install ./ulauncher_5.9.0_all.deb

ln -s .tmux.conf ~/
ln -s .vimrc ~/
ln -s .config/fish/config.fish ~/.config/fish/config.fish

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

bash -c  "$(wget -qO- https://git.io/vQgMr)"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
