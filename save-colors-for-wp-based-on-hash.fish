# Defined in /usr/home/michael/.config/fish/buffer/save-colors-for-wp-based-on-ha.fish @ line 2
function save-colors-for-wp-based-on-hash
		set colorsfrom $argv[2]
		set image $argv[1]
		set hash (md5sum $image)
		echo $colorsfrom > $wallpaperroot/saved-colors/$hash
end
