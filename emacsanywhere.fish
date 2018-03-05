# Defined in /home/michael/.config/fish/buffer/emacsanywhere.fish @ line 2
function emacsanywhere
	set temp /tmp/tmp.org
    emacsclient -c  $temp
    if test -f $temp
        cat $temp | clipboard
        universal-paste
        rm $temp
    end
end
