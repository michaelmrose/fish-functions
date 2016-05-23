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
  end
end
