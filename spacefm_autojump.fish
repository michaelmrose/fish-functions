function spacefm_autojump
    set window (xdotool getactivewindow)
    set selection (rofi -dmenu -p "" | xargs -r zoxide query 2>/dev/null | cut -d ' ' -f2)

    if test -n "$selection" -a -d "$selection"
        # Get the active window ID
        set win_id (xdotool getactivewindow)

        # Get the PID of the active SpaceFM window
        set spacefm_pid (xdotool getwindowpid $win_id 2>/dev/null)

            # Locate SpaceFM's socket for this PID
            set socket_path "/tmp/spacefm-socket-$spacefm_pid"

            # Ensure the socket exists before sending the command
            if test -S "$socket_path"
                spacefm -s --socket "$socket_path" set current_dir "$selection" 2>/dev/null
            else
                echo "Error: Could not find SpaceFM socket for PID $spacefm_pid" >&2
            end
        wmctrl -ia $window
    end




end
