function update-vi3-config
	killall i3blocks
    rm ~/.i3/config
    cat ~/proj/header.txt ~/.i3/colors/{$colors} ~/.i3/personalconfig ~/proj/vi3config > ~/.i3/config
    i3-msg restart
    sleep 3
    configure-gaps
    i3-elements trans
    fix-all-trans
    # hide-all-hidden-windows
    wp recall
end
