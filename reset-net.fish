function reset-net
	sudo ifconfig eth0 down
    sleep 3
    sudo ifconfig eth0 up
end
