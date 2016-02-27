function get-mpv-playing
	windows-list | grep mpv | cut -d ' ' -f6- | cut -d . -f1
end
