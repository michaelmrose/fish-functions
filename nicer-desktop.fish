function nicer-desktop
    set highest (pgrep '^i3$|xcape|sndiod')
    set high (pgrep 'Xorg|emacs')
    set ffp (ps --ppid (pgrep firefox) -o pid=)
    set low $ffp (pgrep 'qbittorrent|mullvad')

    sudo renice -n -20 -p $highest
    sudo renice -n -10 -p $high

    sudo ionice -c 1 -p $highest
    sudo ionice -c 1 -p $high
    sudo ionice -c 3 -p $low
end
