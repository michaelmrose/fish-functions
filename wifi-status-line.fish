function wifi-status-line

    echo '{"state":"Info", "text": " 󰖩"}'
    nmcli monitor | return-wifi-status-line-text
end
