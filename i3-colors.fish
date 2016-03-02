function i3-colors
	set info (i3-color-rofi)
  set switches (odds $info)
  set colors (evens $info)
  for i in (seq (count $switches))
    set com $com $switches[$i]
    # set com $com (singlequote $colors[$i])
  end
  echo $com
end
