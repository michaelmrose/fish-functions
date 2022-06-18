function nicer-desktop
    set highest (pgrep '^i3$|xcape|sndiod')
    set high (pgrep 'Xorg|emacs|sndiod')
    set low (pgrep 'firefox|Web|qbittorrent|mullvad')

    sudo renice -n -20 -p $highest
    sudo renice -n -10 -p $high

    sudo ionice -c 1 -p $highest
    sudo ionice -c 1 -p $high
    sudo ionice -c 3 -p $low
end
