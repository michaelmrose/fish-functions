# Defined in /home/michael/.config/fish/buffer/wallpaper_wp.fish @ line 238
function set-wallpaper
	set $img $argv
    set ratio (get-image-aspect-ratio-type $img)
    switch $ratio
        case "narrow"
            set format max
        case "wide"
            set format fill
        case "extrawide"
            set format max
        case "superwide"
            set format max
    end
    feh --bg-{$format} $img
    s cp $img /etc/lightdm/bg.jpg
    set -Ux bgimage $img
end
