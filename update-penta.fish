function update-penta
	git -C ~/proj/dactyl pull
    make -C ~/proj/dactyl/pentadactyl install
    killall firefox
    firefox &
end
