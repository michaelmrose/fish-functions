function return-program-name
	set words (explode $argv)
    switch $words[1]
        case kdesudo
            echo $words[2..-1]
        case sudo
            echo $words[2..-1]
        case libprs500
            echo calibre
        case Thunderbird
            echo thunderbird-bin
        case urxvtt
            echo urxvtc
        case LilyTerm
            echo lilyterm
        case "*"
            echo $words
    end
end
