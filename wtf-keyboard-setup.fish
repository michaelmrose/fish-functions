function wtf-keyboard-setup
	/usr/libexec/mate-settings-daemon &
  g15macro &
  xmodmap ~/.i3/keys
  vi3_setup-keyboard
  vi3_bind-shift-keys
  xmodmap ~/.i3/keys
end
