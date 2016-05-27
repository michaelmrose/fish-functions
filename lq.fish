function lq
	kill (pgrep emacs)
  sleep 1
  switch $argv
    case sd
      sudo shutdown -h now
    case exit
      i3-msg exit
    case rb
      sudo shutdown -r now
    case suspend
      lockme
      sudo pm-suspend
  end
end
