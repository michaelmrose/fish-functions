function nothing-urgent
    for i in (xdotool search --class .\*)
        xdotool set_window --urgency 0 $i
    end
end
