function remap
	switch $argv[1]
        case key
            set type keysym
            set key1 $argv[2]
            set key2 $argv[3..-1]
        case code
            set type keycode
            set key1 $argv[2]
            set key2 $argv[3..-1]
        case "*"
            set type keysym
            set key1 $argv[1]
            set key2 $argv[2..-1]
    end
    xmodmap -e "$type $key1 = $key2"
end
