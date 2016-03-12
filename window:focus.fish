function window:focus
	fix-all-trans
	# set -U OLD_WINDOW $NEW_WINDOW
  # set -U NEW_WINDOW (xdotool getactivewindow)
  # fix-trans-fade $OLD_WINDOW
  # fix-trans-fade $NEW_WINDOW
  # # hide-all-hidden-windows
  # # fade-in-trans-window (xdotool getactivewindow)
  # if is-window-hidden $OLD_WINDOW
    # hide-all-hidden-windows
    # sleep 0.1
    # fade-in-trans-window $NEW_WINDOW
  # else
    # fade-in-all-windows
    # fix-all-trans
  # end
end
