# Defined in /home/michael/.config/fish/buffer/kmenu_kmenu-pics.fish @ line 2
function kmenu
	switch $argv
      case pics
            set seq Menu a p
      case wp
          set seq Menu s
    end
    for i in $seq
        xdotool key $i
        sleep 0.1
    end
end
