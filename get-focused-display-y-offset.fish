function get-focused-display-y-offset
	get-ws-info get rect.y where output = (quote (get-focused-display)) | sort -u
end
