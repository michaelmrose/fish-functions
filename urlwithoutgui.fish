function urlwithoutgui
	firefox --new-window $argv &
    sleep 1
    xdotool type ':chromeless';sleep 1; xdotool key Return
end
