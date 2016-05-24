function update-vi3-config
	killall i3blocks
    rm ~/.i3/config
    cat /opt/vi3/header.txt ~/.i3/colors/{$colors} ~/.i3/personalconfig /opt/vi3/vi3config > ~/.i3/config
    i3-msg restart
    sleep 3
    i3-elements trans
    fix-all-trans
    hide-all-hidden-windows
    wp recall
    freezeg15.sh
    thawg15.sh
end
