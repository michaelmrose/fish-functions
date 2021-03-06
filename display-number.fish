# Defined in /home/michael/.config/fish/buffer/display-number.fish @ line 2
function display-number
	# set displays xrandr|g " connected"
    # set names (p $displays | nth 1)
    # set offsets p $displays | cut -d + -f2
    set numdisplays (count (get-ws-info get output where visible = true))
    switch $numdisplays
        case 1
            echo 0
        case '*'
            switch (get-focused-display)
                case eDP1
                    echo 0
                case DP1
                    echo 1
                case HDMI2
                    echo 2
            end
    end
end
