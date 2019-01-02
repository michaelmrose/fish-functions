# Defined in /home/michael/.config/fish/buffer/send-email_share-url-from-clip.fish @ line 10
function share-url-from-clipboard
	set url (xclip -selection clipboard -o)
    set target $argv[1]
    set subject (url-to-title $url)
    set file /tmp/anemail.txt
    if test (count $argv) -gt 1
        set more $argv[2..-1]
    end
    # echo sharing url "$url" title "$title" to "$target"
    # echo send-email "$target" "$title" "$url"
    # echo the fucking url is $url
    # p "Subject: $title" "$url" | msmtp $target
    # p "Subject: $title" $url |msmtp $target
    rm /tmp/anemail.txt
    echo "Subject: $subject" >> $file
    echo >> $file
    echo "$url" >> $file
    echo "$more" >> $file
    cat $file | msmtp $target
end
