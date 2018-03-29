# Defined in /home/michael/.config/fish/buffer/imapnotify-list.fish @ line 1
function imapnotify-list
	for i in /home/michael/.config/imap_inotify/*.json
        imapnotify $i &
    end
end
