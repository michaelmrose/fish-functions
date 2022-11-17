function mullvad-status-official
		if nmcli -g GENERAL.STATE c s tun0|grep -q 'activ' &> /dev/null
				i3status-rs-colorize Warning "  "
				# i3status-rs-colorize Warning "  🔒 "
		else
				i3status-rs-colorize Info "    "
				# i3status-rs-colorize Info "   🔓 "
		end

end
