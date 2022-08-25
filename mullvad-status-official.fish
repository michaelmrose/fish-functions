function mullvad-status-official
		if mullvad status|grep Connected > /dev/null
				i3status-rs-colorize Warning "  "
				# i3status-rs-colorize Warning "  🔒 "
		else
				i3status-rs-colorize Info "    "
				# i3status-rs-colorize Info "   🔓 "
		end

end
