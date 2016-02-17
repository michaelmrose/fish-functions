function get-current-calibre-library
	cutlast / (cat ~/.config/calibre/global.py | grep library_path) | cut -d "'" -f1
end
