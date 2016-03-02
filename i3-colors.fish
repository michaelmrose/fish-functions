function i3-colors
	set info (p (i3-color-rofi))
  set switches (odds $info)
  set colors (evens $info)
  for i in (seq (count $switches))
    set com $com $switches[$i] fuck \"$colors[$i]\"
  end
  echo $com
end
