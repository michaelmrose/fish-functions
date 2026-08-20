function return-wifi-status-line-text
    while read -l line
        set name (nmcli connection show|g wlan|choose 0)
        echo " 󰖩:  $name"
    end
end
