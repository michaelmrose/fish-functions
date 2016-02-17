function window-title-status-line
	echo (center-text (wininfo title | cut -c1-120))
end
