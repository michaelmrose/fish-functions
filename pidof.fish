function pidof
	if defined wmctrl
        unique (wmctrl -lxp | grep -iE ".*\.$argv | $argv\..*" | cut -d " " -f4)
    else
        return 1
    end
end
