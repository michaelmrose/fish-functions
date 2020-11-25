# Defined in /usr/home/michael/.config/fish/buffer/save-colors-for-wp-based-on-ha.fish @ line 8
function lookup-saved-colors-for-wp
		echo $wallpaperroot/saved-colors/(md5sum $argv)
end
