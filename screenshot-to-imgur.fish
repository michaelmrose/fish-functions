function screenshot-to-imgur
	set target /tmp/screenshot
  screenshot $argv $target
  imgur -f $target | clipboard
end
