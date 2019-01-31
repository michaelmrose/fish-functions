# Defined in /home/michael/.config/fish/buffer/monitors.fish @ line 2
function monitors
	switch $argv
        case bed
            xrandr --output DVI-I-1 --auto --output DVI-I-2 --off
        case desk
            xrandr --output DVI-I-2 --auto --output DVI-I-1 --off
        case toggle
            switch (xrandr|grep 'Screen 0' | cut -d " " -f8)
                case 1600
                    monitors bed
                case 1920
                    monitors desk
            end
    end
end
