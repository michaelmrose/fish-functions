# Defined in /home/michael/.config/fish/buffer/garg.fish @ line 1
function garg
	set list $argv

    if test -f $list[1]
        set list open $argv
    end
    
	  set games (endsin z5 z3 gblorb ~/if)
    switch $list[1]
        case select
            p $games | all select | each gargoyle
        case search
            p $games | g $list[2..-1] | all select | each gargoyle
        case open
            set -U LAST_GAME $list[2]
            gargoyle $list[2]
        case last
            gargoyle $LAST_GAME
    end
end
