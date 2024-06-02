function nothing-urgent
    # for i in (windows-list class)
  #       noturgent $i
  #   end
    for i in (xdotool search --class .\*)
        xdotool set_window --urgency 0 $i
    end
    set wins (xdotool search --class .\*)
    xdotool set_window --urgency 0 $wins
end
