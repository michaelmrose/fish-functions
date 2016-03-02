function i3-colors
	set info (explode-words (i3-color-rofi))[1..-2]
  count $info
  set switches (odds $info)
  set colors (evens $info)
  for i in (seq (count $switches))
    set com $com $switches[$i] \"$colors[$i]\"
  end
  echo $com
end
