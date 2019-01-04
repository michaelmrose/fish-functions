# Defined in /home/michael/.config/fish/buffer/nothing-urgent.fish @ line 2
function nothing-urgent
	# for i in (windows-list class)
  #       noturgent $i
  #   end
    for i in (xdotool search --class .\*)
        xdotool set_window --urgency 0 $i
    end
end
