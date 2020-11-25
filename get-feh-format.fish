# Defined in /usr/home/michael/.config/fish/buffer/get-feh-format_set-wallpaper.fish @ line 1
function get-feh-format
		set img (pathof $argv[1])
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
		echo $format
end
