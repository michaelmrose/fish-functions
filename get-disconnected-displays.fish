function get-disconnected-displays
	get-ws-info get output where visible = false | sort -u
end
