function switch-library
	if not contains $argv (ls /med/ebooks)
        sendit library $argv does not exist
        return 1
    end
    if wmctrl -lxp | grep calibre-gui.libprs500
        calibre -s
        calibre --with-library /med/ebooks/$argv --detach &
        sleep 2
    else
        change-calibre-library-offline $argv
    end
end
