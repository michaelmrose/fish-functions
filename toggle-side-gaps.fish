# Defined in /home/michael/.config/fish/buffer/toggle-side-gaps.fish @ line 2
function toggle-side-gaps
    set width (window-width)
    if test $width -lt 1300
        i3 gaps horizontal current set 5
    else
        set size (math (math $width - 1160 ) / 2)
        echo $size
        # i3 gaps horizontal current set 300
    end
end
