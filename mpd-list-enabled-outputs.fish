# Defined in /home/michael/.config/fish/buffer/mpd-list-enabled-outputs_mpd-s.fish @ line 2
function mpd-list-enabled-outputs
    mpc outputs|grep enabled|cut -d '(' -f2|cut -d ')' -f1|tr '
    ' ' '
end
