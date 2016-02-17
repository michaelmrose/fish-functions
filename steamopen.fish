function steamopen
	switch $argv
        case borderlands2
            set steamid 49520
    end
    steam steam://rungameid/$steamid &
end
