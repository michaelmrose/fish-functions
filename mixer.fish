function mixer
		# kitty -1 -e alsamixer -c 1
		# waituntilfocused kitty
		# i3 fullscreen
		# kitty -1 -e cmixer
		# waituntilfocused kitty
		# i3 fullscreen
		# xdotool key Next
		kitty -1 -e alsamixer -c(cat /etc/sv/sndiod/card)

end
