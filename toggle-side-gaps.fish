# Defined in /home/michael/.config/fish/buffer/toggle-side-gaps.fish @ line 1
function toggle-side-gaps
    if test (window-width) -lt 1300
        i3 gaps horizontal current set 5
    else
        i3 gaps horizontal current set 300
    end
end
