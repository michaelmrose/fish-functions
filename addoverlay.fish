function addoverlay
	sudo layman -a $argv
    sudo layman -s $argv
    sudo emerge --sync
    sudo eix-sync
end
