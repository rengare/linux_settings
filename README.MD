## Dragon fly black to loud
* https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/
* set only ```volume = ignore```
* volume change amixer -D pulse sset Master 5%+
## mapping a media keys
* https://askubuntu.com/a/997276
* using xdotool
## swipe gestures using xdotool
* https://github.com/rengare/comfortable-swipe
## noise cancelation
* https://wiki.archlinux.org/index.php/PulseAudio/Troubleshooting#Enable_Echo/Noise-Cancellation
## fan control
* https://github.com/gilbsgilbs/dell-bios-fan-control-git
* https://wiki.archlinux.org/index.php/Fan_speed_control#Installation_2
## intel screen tearing
* https://www.reddit.com/r/pop_os/comments/b118me/switching_to_nvidia_mode_is_broken_when_adding/

## pop os tilix theme
* https://github.com/Toyonut/tilix_pop_os_theme

## Installation
* clone repository or download zip (unzip ofc :))
* chmod +x exetuce.sh && ./exetuce.sh

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
