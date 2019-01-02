# Defined in /home/michael/.config/fish/buffer/share-url-from-clipboard.fish @ line 1
function share-url-from-clipboard
	set (xclip -o)
    set target $argv[1]
    set title (url-to-title $url)
    echo sharing url $url title $title to $target
end
