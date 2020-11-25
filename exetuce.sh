sudo apt install tilix tlp chrome-gnome-shell lm-sensors git gnome-tweak-tool zsh neovim goldendict -y
sudo apt update && sudo apt upgrade -y

mkdir ~/workspace

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp -rf * ~/

wget https://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/amd64/albert_0.16.1_amd64.deb

sudo dpkg -i albert_* 

sudo apt --fix-broken install 

sudo dpkg -i albert_* 

gsettings set org.gnome.desktop.wm.preferences button-layout close,minimize,maximize:appmenu

gsettings set org.gnome.desktop.interface clock-format '24h'

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#~/.cargo/bin/cargo install procs bat ripgrep hunter exa

bash -c  "$(wget -qO- https://git.io/vQgMr)"
