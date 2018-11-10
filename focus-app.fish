# Defined in /home/michael/.config/fish/buffer/focus-app.fish @ line 2
function focus-app
	# set criteria (explode-words (return-windowclass (appkey $argv)))

    #   switch (count $criteria)
    #           case 1
    #     set com i3-msg \'[class=$criteria]\' focus
    #   case 2
    #     set com i3-msg \'[class=$criteria[1] title=\"$criteria[2]\"]\' focus
    # end
    # echo com is $com
    # set res (eval $com)
    # er vi3op
    # update-op-status
    # echo $res | grep true
    # signal-i3blocks pages
    set criteria class
    switch $argv
        case a
        case b
            set val Nightly
        case c
            set val Speedcrunch
        case d
            set val Qbittorrent
        case e
        case f
        case g
        case h
            set val Hexchat
        case i
        case j
        case k
        case l
            set val kitty
        case m
            set val Clementine
        case n
        case o
        case p
        case q
        case r
        case s
            set val Steam
        case t
            set val kitty
        case u
        case v
            set val mpv
        case w
        case x
        case y
        case z
            set val Zathura
        case E
            # set criteria title
            # set val '.*mu4e.*'
            i3 workspace c
            return 0
    end
    set com i3 \'[{$criteria}={$val}]\' focus
    echo $com
    eval $com
end
