function pp
	switch $argv[1]
		case zoom
                    sudo powerprofilesctl set performance
		    echo set performance
		    notify-send set performance
		case idle
                    sudo powerprofilesctl set power-saver
		    echo set power-saver
		    notify-send set power-saver
	end
end
