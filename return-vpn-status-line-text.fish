function return-vpn-status-line-text
    set locked '{"state":"Warning", "text": "  "}'
    set unlocked '{"state":"Info", "text": "    "}'
    while read -l line
        if string match line "$VPN_CONNECTION: connected"
            echo $locked
        else
            echo $unlocked
        end
        # switch $line
        #     case "$VPN_CONNECTION: connected"
        #         echo $locked
        #     case "$VPN_CONNECTION: disconnected"
        #         echo $unlocked
        # end
    end
end
