function vpn-status-line
    echo '{"state":"Info", "text": " "}'
    nmcli monitor | return-vpn-status-line-text
end
