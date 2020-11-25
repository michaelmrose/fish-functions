# Defined in /usr/home/michael/.config/fish/buffer/lookup-saved-colors-for-wp.fish @ line 2
function lookup-saved-colors-for-wp
		cat $wallpaperroot/saved-colors/(md5sum $argv)
end
