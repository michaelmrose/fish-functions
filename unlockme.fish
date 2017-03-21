function unlockme
	i3-msg mode default
  i3-elements trans
  # fix-all-trans
  fade-in-all-windows
  fix-all-trans
  xset -dpms
  hide-all-hidden-windows
  wp recall
end
