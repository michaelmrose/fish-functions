function vpn-status-line
	nmcli monitor | return-vpn-status-line-text
end
