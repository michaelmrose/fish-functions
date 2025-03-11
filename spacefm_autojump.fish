function spacefm_autojump
    set window (xdotool getactivewindow)
    set selection (rofi -dmenu -p "" | xargs -r zoxide query 2>/dev/null | cut -d ' ' -f2)

    if test -n "$selection" -a -d "$selection"
        spacefm -s set current_dir "$selection" 2>/dev/null
    end


end
