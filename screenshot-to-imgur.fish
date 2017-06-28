function screenshot-to-imgur
	set target /tmp/screenshot.jpg
  screenshot $argv $target
  imgur -f $target | clipboard
end
