# Defined in /home/michael/.config/fish/buffer/kmenu_kmenu-pics.fish @ line 1
function kmenu
	switch $argv
        case pics
            set seq Menu a p
    end
    for i in $seq
        xdotool key $i
        sleep 0.1
    end
end
