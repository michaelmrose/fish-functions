# Defined in /home/michael/.config/fish/buffer/save-wp_wp.fish @ line 2
function save-wp
	if file-bg $bgimage $argv
        set ext (get-ext $bgimage)
        set -U bgimage $wallpaperroot/$argv.$ext
    end
end
