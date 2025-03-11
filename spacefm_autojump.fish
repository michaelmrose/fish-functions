function spacefm_autojump
    set window (xdotool getactivewindow)
    set selection (rofi -dmenu -p "" | xargs -r zoxide query 2>/dev/null | cut -d ' ' -f2)

    if test -n "$selection" -a -d "$selection"
        # Get the active window ID
        set win_id (xdotool getactivewindow)

        spacefm  set current_dir "$selection" 2>/dev/null
        wmctrl -ia $window
    end




end
