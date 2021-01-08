sudo apt install tilix tlp chrome-gnome-shell lm-sensors git gnome-tweak-tool zsh neovim goldendict translate-shell fd-find bat ripgrep exa -y
sudo apt update && sudo apt upgrade -y

mkdir ~/workspace

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp -rf * ~/

wget https://github.com/Ulauncher/Ulauncher/releases/download/5.9.0/ulauncher_5.9.0_all.deb
wget https://launchpad.net/~peppermintos/+archive/ubuntu/ice-dev/+files/ice_6.0.7_all.deb
sudo apt install ./ulauncher_5.9.0_all.deb
sudo apt install ./ice_6.0.7_all.deb

gsettings set org.gnome.desktop.wm.preferences button-layout close,minimize,maximize:appmenu

gsettings set org.gnome.desktop.interface clock-format '24h'

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

bash -c  "$(wget -qO- https://git.io/vQgMr)"
