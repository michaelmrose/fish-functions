# Defined in /home/michael/.config/fish/buffer/deprio_nicer_nicer-desktop.fish @ line 15
function nicer-desktop
    set high (pgrep 'Xorg|i3|emacs|pulseaudio')
    set low (pgrep 'firefox|qbittorrent|mullvad|openvpn')
    sudo renice -n -20 -p $high
    sudo ionice -c 1 -p $high
    sudo ionice -c 3 -p $low
end
