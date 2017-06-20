function focus
	set original (wininfo id dec)
    switch $argv[1]
        case "id"
            set criteria id
            set choice (ensure-dec $argv[2])
        case "class"
            set criteria class
            set choice \'(return-windowclass $argv[2])\'
        case "output"
            im focus output $argv[2]
            return 0
        case "urgent"
            i3-msg [urgent=latest] focus
            return 0
        case "ws"
            im focus $argv[2]
            return 0
        case "regex"
            set criteria $argv[2]
            set choice \'$argv[3]\'
        case "*"
            if test (count $argv) -eq 1
                set criteria class
                set choice \'(return-windowclass $argv[1])\'
            else
                set criteria $argv[1]
                set choice \'$argv[2]\'
            end
    end
    im [$criteria=$choice] focus
    set final (wininfo id dec)
    if [ $final = $original ]
        return 1
    end
end
