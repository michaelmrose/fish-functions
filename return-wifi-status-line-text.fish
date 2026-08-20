function return-wifi-status-line-text
    while read -l line
        echo 󰖩:   (nmcli connection show|g wlan|choose 0)
    end
end
