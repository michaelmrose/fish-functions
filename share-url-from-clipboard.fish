# Defined in /home/michael/.config/fish/buffer/share-url-from-clipboard.fish @ line 2
function share-url-from-clipboard
	set url (xclip -selection clipboard -o)
    set target $argv[1]
    set title (url-to-title $url)
    echo sharing url "$url" title "$title" to "$target"
    echo send-email "$target" "$title" "$url"
end
