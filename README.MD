## dotfiles
* https://github.com/rengare/dotfiles
* `git clone --bare https://github.com/rengare/dotfiles.git $HOME/.dotfiles.git`
* `echo "dotfiles.git" >> ~/.gitignore`
* `alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"`
* `dotfiles config --local status.showUntrackedFiles no`
* `dotfiles checkout`
## Dragon fly black to loud
* https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/
* set only ```volume = ignore```
* volume change amixer -D pulse sset Master 5%+
## mapping a media keys
* https://askubuntu.com/a/997276
* using xdotool
* xdotool key --clearmodifiers XF86AudioPlay
* xdotool key --clearmodifiers XF86AudioNext
* xdotool key --clearmodifiers XF86AudioPrev
## swipe gestures using xdotool
* https://github.com/JoseExposito/touchegg/releases/tag/2.0.7
* flatpak touchee
## noise cancelation
* https://wiki.archlinux.org/index.php/PulseAudio/Troubleshooting#Enable_Echo/Noise-Cancellation
## fan control
* https://github.com/TomFreudenberg/dell-bios-fan-control.git
* https://wiki.archlinux.org/index.php/Fan_speed_control#Installation_2
## intel screen tearing
* https://www.reddit.com/r/pop_os/comments/b118me/switching_to_nvidia_mode_is_broken_when_adding/

## pop os tilix theme
* https://github.com/Toyonut/tilix_pop_os_theme

## Installation
* clone repository or download zip (unzip ofc :))
* chmod +x exetuce.sh && ./exetuce.sh

## Airplay cast
* sudo apt install paprefs pulseaudio-module-raop #airplay cast
* pactl load-module module-raop-discover
* pulseaudio -k
* pulseaudio --start

## firefox
* enable gfx.webrender.all && gfx.webrender.enabled

## slow boot
* sudo systemctl disable NetworkManager-wait-online.service
* sudo systemctl mask NetworkManager-wait-online.service
* sudo systemctl disable docker.service
* sudo systemctl disable apt-daily.service
* sudo systemctl disable apt-daily.timer
* sudo systemctl disable apt-daily-upgrade.timer
* sudo systemctl disable apt-daily-upgrade.service

## gdm3 touchpad tap
https://unix.stackexchange.com/questions/266586/gdm-how-to-enable-touchpad-tap-to-click#266590

# Pipewire

## pipewire compilation
* `sudo apt build-dep pipewire`
Compile pipewire as describe 
https://pipewire.org/#getting

## turn off pulse audio
For some reason stoping daemon didn't stops pulse audio so I had to move service and socket file

* pulseaudio --kill
* sudo mv /usr/lib/systemd/user/pulseaudio.service ~/backup/pulseaudio.service
* sudo mv /usr/lib/systemd/user/pulseaudio.socket ~/backup/pulseaudio.socket

## turning on pipewire
* systemctl --user enable --now  pipewire 
* again running pipewire-pulse daemon didn't work so I created a bash file

```
#!/bin/bash
/usr/bin/pipewire-pulse
```
* chmod +x .startup_script

* run the script on startup using gnome startup applications or create .desktop file and link to ~/.config/autostart/

* logout, login

* confirm that pipewire pulse is running 
`pactl info` should shows `Server Name: PulseAudio (on PipeWire 0.3.21)` 

## https://github.com/TheAssassin/AppImageLauncher
## barrier config
* run barrier and connect to host `Exec=barrierc -f --no-tray --enable-crypto 192.168.8.100`
