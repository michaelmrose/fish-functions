function window:focus
	hide-all-hidden-windows
  sleep 0.1
  fix-trans (wininfo id dec)
end
