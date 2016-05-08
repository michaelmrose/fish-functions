function wtf-keyboard-setup
	mate-session &
  sleep 3
  sudo killall caja
  sudo killall mate-session
  sudo kill -9 (pgrep mate-screensave)
  sudo kill -9 (pgrep mate-volume-con)
  g15macro &
  wp recall
  xmodmap ~/.i3/keys
  vi3_setup-keyboard
  vi3_bind-shift-keys
end
