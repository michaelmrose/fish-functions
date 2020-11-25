# Defined in /usr/home/michael/.config/fish/buffer/save-colors-for-wp-based-on-ha.fish @ line 2
function save-colors-for-wp-based-on-hash
		set colorsfrom $argv[1]
		set image $argv[2]
		set hash (md5sum $image |choose 0)
		echo $colorsfrom > $wallpaperroot/saved-colors/$hash
end
