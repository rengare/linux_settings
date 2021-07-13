# Add ppa for latest build
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream

# Install components
sudo apt install gstreamer1.0-pipewire pipewire-media-session libspa-0.2-bluetooth libspa-0.2-jack pipewire pipewire-audio-client-libraries

# If you get unmet dependencies, you can run:
sudo apt --fix-broken install

# Reload new services
systemctl --user daemon-reload

# Disable PulseAudio service
systemctl --user --now disable pulseaudio.service pulseaudio.socket

# If you update from previous version of PopOS
systemctl --user mask pulseaudio

# Enable Pipewire services
systemctl --user --now enable pipewire pipewire-pulse

# Enable Pipewire media session
systemctl --user --now enable pipewire-media-session.service
