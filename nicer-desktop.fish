function nicer-desktop
    set highest (pgrep 'xcape')
    set high (pgrep 'Xorg|emacs|i3$|sndiod')
    # set ffp (ps --ppid (pgrep firefox) -o pid=)

    sudo renice -n -20 -p $highest
    sudo renice -n -10 -p $high

    sudo ionice -c 1 -p $highest
    sudo ionice -c 1 -p $high
end
