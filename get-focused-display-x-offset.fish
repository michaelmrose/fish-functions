function get-focused-display-x-offset
	get-ws-info get rect.x where output = (quote (get-focused-display)) | sort -u
end
