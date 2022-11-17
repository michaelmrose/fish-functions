function vpn-status-line
	echo loading...
	nmcli monitor | return-vpn-status-line-text
end
