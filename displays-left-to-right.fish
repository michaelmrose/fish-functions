# Defined in /home/michael/.config/fish/buffer/displays-left-to-right.fish @ line 1
function displays-left-to-right
	# set displays xrandr|g " connected"
    # set names (p $displays | nth 1)
    # set offsets p $displays | cut -d + -f2
    set numdisplays (count (get-ws-info get output where visible = true))
    switch $numdisplays
        case 1
            echo 0
        case '*'
            switch (get-focused-display)
                case eDPI
                    echo 2
                case DP1
                    echo 1
                case HDMI2
                    echo 0
                    end
    end
end
