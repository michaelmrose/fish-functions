function lq
	sleep 1
  switch $argv
case sd
  kill (pgrep emacs)
  sudo shutdown -h now
case exit
  kill (pgrep emacs)
  i3-msg exit
case rb
  kill (pgrep emacs)
  sudo shutdown -r now
case suspend
  lockme
  sleep 6
  sudo pm-suspend
  sleep 6
  cycleg15.sh
end
end
