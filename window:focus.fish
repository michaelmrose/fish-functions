function window:focus
	set -U OLD_WINDOW $NEW_WINDOW
  set -U NEW_WINDOW (xdotool getactivewindow)
	hide-all-hidden-windows
  sleep 0.1
  fade-in-trans-window $NEW_WINDOW
end
