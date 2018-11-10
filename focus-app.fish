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
    switch $argv
        case a
        case b
            set criteria class
            set val Nightly
        case c
        case d
        case e
        case f
        case g
        case h
        case i
        case j
        case k
        case l
        case m
        case n
        case o
        case p
        case q
        case r
        case s
        case t
        case u
        case v
        case w
        case x
        case y
        case z
    end
    i3 '[{$criteria}={$val}]' focus
end
