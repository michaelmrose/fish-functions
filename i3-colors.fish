function i3-colors
	set com (i3-color-rofi)
  echo $com | sed 's/#[0-9]+ /\\\'\\\'/g'
end
