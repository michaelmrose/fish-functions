function nicer-desktop
    set high (pgrep 'Xorg|i3|emacs|sndiod')
    # set low (pgrep 'firefox|qbittorrent|mullvad')
    sudo renice -n -20 -p $high
    sudo ionice -c 1 -p $high
    # sudo ionice -c 3 -p $low
end
