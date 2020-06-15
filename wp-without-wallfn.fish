# Defined in /home/michael/.config/fish/buffer/wp-without-wallfn.fish @ line 1
function wp-without-wallfn
    set current $bgimage
    wp $argv
    feh --bg-fill $current
end
