function sxmode
	set mode $argv
    set cfg sxhkdrc
    set dir ~/.config/sxhkd
    rm $dir/$cfg
    ln -s $dir/$mode $dir/$cfg
    kill -10 (pgrep sxhkd)
end
