# Defined in /home/michael/.config/fish/buffer/send-email_share-url-from-clip.fish @ line 10
function share-url-from-clipboard
	set url (xclip -selection clipboard -o)
    set target $argv[1]
    set title (url-to-title $url)
    # echo sharing url "$url" title "$title" to "$target"
    # echo send-email "$target" "$title" "$url"
    # echo the fucking url is $url
    # p "Subject: $title" "$url" | msmtp $target
    # p "Subject: $title" $url |msmtp $target
    p "Subject: $subject" " " "$url"|msmtp $target
end
