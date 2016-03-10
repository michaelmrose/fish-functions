function window:focus
	hide-all-hidden-windows
  sleep 0.1
  fade-in-trans-window (xdotool getactivewindow)
end
