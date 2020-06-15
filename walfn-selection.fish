# Defined in /home/michael/.config/fish/buffer/walfn-selection.fish @ line 2
function walfn-selection
    set current $bgimage
    wp $argv
    feh --bg-fill $current
end
