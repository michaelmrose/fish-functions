function i3-colors
	set info (explode-words (i3-color-rofi))
  count $info
  # set switches (odds $info)
  # set colors (evens $info)
  # for i in (seq (count $switches))
  #   set com $com $switches[$i] fuck \"$colors[$i]\"
  # end
  # echo $com
end
