# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 2
function newfuckingweather
	curl wttr.in/\?0\?T\?Q|cut -c 16- |condense_lines|condense_spaces
  return 0
end
