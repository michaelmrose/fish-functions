function wtf-keyboard-setup
	mate-session &
  sleep 3
  sudo killall caja
  sudo killall mate-sesion
  sudo killall mate-screensave
  sudo killall mate-volume-con
  g15macro &
  wp recall
  xmodmap ~/.i3/keys
  vi3_setup-keyboard
  vi3_bind-shift-keys
end
