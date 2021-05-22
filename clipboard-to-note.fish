# Defined in /usr/home/michael/.config/fish/buffer/clipboard-to-note.fish @ line 2
function clipboard-to-note
		set uid (uid)
		set dest /usr/home/michael/org/roam/images/$uid.png

		xclip -o -selection clipboard -target image/png > /tmp/$uid.png
		convert /tmp/$uid.png -resize 50% $dest
		echo "[[$dest]]"|clipboard
		rm /tmp/$uid.png
		set clip (xclip -o -selection clip)
		emacsclient -e '(insert-into-buffer "$clip")'
		emacsclient -e '(with-current-buffer (first(mapcar \'window-buffer (window-list))) (org-redisplay-inline-images))'
end
