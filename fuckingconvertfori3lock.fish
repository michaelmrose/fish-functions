# Defined in /home/michael/.config/fish/buffer/fuckingconvertfori3lock.fish @ line 2
function fuckingconvertfori3lock
	set img $argv
    convert -resize 1440x810 $img /tmp/bg3.png
    convert -resize 1920x1080 $img /tmp/bg2.png
    convert -resize 1680x1080 $img /tmp/bg1.png
    convert /tmp/bg1.png /tmp/bg2.png /tmp/bg3.png +append /tmp/multibg.png
end
