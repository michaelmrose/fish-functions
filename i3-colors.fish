function i3-colors
	set args (i3-color-rofi)
	# set info (explode-words (i3-color-rofi))[1..-2]
  # set switches (odds $info)
  # set colors (evens $info)
  # for i in (seq (count $switches))
    # set args $args $switches[$i] $colors[$i]
  # end
  set res (for i in $args;convertargb $i;end)
  echo $res
  # eval rofi $args $argv
end
