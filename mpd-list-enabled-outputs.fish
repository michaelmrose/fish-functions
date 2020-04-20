# Defined in /home/michael/.config/fish/buffer/mpd-list-enabled-outputs_mpd-s.fish @ line 2
function mpd-list-enabled-outputs
    # mpc outputs|grep enabled|cut -d '(' -f2|cut -d ')' -f1|tr '
    # ' ' '
    set outputs (mpc outputs|grep enabled|cut -d '(' -f2|cut -d ')' -f1|cut -c1-90)
    if test (count $outputs) -gt 1
        echo $outputs[1] and $outputs[2]
    else
        echo $outputs
    end
end
