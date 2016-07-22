function show-wid-cmd
	ps -p (wmctrl -lxp | grep $argv | cut -d ' ' -f4) -c --no-headers  | awk '{print $6}'
end
