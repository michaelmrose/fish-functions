function i3-colors
	set info (explode-words (i3-color-rofi))[1..-2]
  set switches (odds $info)
  set colors (evens $info)
  for i in (seq (count $switches))
    set args $args $switches[$i] \"$colors[$i]\"
  end
  eval rofi $args $argv
end
