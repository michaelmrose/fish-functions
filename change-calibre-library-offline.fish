function change-calibre-library-offline
	set file ~/.config/calibre/global.py
    set old_library (get-current-calibre-library)
    set new_library $argv
    replacestr $old_library $new_library $file
end
