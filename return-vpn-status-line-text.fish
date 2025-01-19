function return-vpn-status-line-text
    set locked '{"state":"Warning", "text": "  "}'
    set unlocked '{"state":"Info", "text": "    "}'
    while read -l line
        switch $line
            case $VPN_CONNECTION: connected
                echo $locked
            case $VPN_CONNECTION: disconnected
                echo $unlocked
        end
    end
end
