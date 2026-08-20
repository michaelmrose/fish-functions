function return-wifi-status-line-text
    while read -l line
        nmcli connection show|g wlan|choose 0
    end
end
