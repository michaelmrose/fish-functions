function instances-of
	count (wmctrl -lxp | grep -i $argv)
end
