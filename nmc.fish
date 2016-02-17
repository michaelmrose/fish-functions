function nmc --description 'choose wireless connection'
	set connections println (nmcli connection | condense_spaces)[2..-1] | grep wireless | cut -d " " -f1
    set uuids println (nmcli connection | condense_spaces)[2..-1] | grep wireless | cut -d " " -f2
    switch $argv[1]
        case list
            println $connections
        case choose
            set choice (rfi match $connections)
            nmc to $choice up
        case to
            set command $argv[-1]
            set location $argv[2..-2]
            set ndx (findindex $location $connections)
            set uid $uuids[$ndx]
    end
end
