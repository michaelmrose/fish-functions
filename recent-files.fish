function recent-files
	grep "bookmark href" ~/.local/share/recently-used.xbel|choose -f '//| |"' 3|decodeURIComponent
end
