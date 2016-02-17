function return-winclass
	xprop  WM_CLASS -id $argv | cut -d '"' -f4
end
