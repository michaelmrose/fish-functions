# Defined in /usr/home/michael/.config/fish/buffer/vpn.fish @ line 2
function vpn
    switch $argv[1]
        case -d
            volemad-cli -d
        case  -c
            volemad-cli  -p 'USA' -s 'Los Angeles, CA'
    end
end
