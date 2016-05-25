function album-art
	set data (playerctl metadata mpris:artUrl | cut -d '/' -f3-)
    if exists $argv
        switch $argv[1]
            case -o
                o $data
            case -r
              get-resolution (data)
        end
    else
        echo $data
    end
end
