function mpv-wrap
	switch (count $argv)
        case 1
            set vid $argv[1]
        case 2
        set vid $argv[-1]
        set opts $argv[1..-2]
        set opts (echo $opts | sed 's#-a#--no-video#g')
    end
    set com umpv
    add-to-recent-videos $vid
    eval $com $opts \"$vid\"
end
