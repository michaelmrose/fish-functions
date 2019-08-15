# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 76
function new_tab
	set win (wininfo id dec)
  i3 layout tabbed
  urxvtc
  sleep 1
  msg $win
  focus id $win
end
