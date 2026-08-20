function wifi-status-line

    nmcli monitor | return-wifi-status-line-text
end
