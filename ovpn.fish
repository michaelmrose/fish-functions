function ovpn
	set dir (pwd)
    cd /etc/openvpn
    set default seattle
    set tmp /tmp/vpn_location
    if not exists $argv
        ovpn toggle
    end
    switch $argv[1]
        case connect
            switch (count $argv)
                case 1
                    set location $default
                case "*"
                    set location $argv[2..-1]
            end
            # set file (ovpn list | grep -i $location | head -1)
            set file (ls /etc/openvpn/*.ovpn | grep -i $location)
            set -U openvpn_location $location
            echo $location > $tmp
            signal-i3blocks vpn
            sudo openvpn "$file"
            rm $tmp
            signal-i3blocks vpn
        case disconnect
            if pgrep openvpn > /dev/null
                sudo killall openvpn
                set -U openvpn_location none
                rm $tmp
                signal-i3blocks vpn
                cd $dir
                return 0
            end
        case list
            for i in (ls /etc/openvpn/*.ovpn)
                cutlast / $i | cut -d "." -f1
            end
        case show
            if test -f $tmp
                echo (cat /tmp/vpn_location)
            else
                echo none
            end
        case choose
            set choice (tolower (rfi match "select a location" (ovpn list)))
            ovpn connect $choice
        case file
            sudo openvpn $argv[2..-1]
        case toggle
            if pgrep openvpn > /dev/null
                ovpn disconnect
            else
                ovpn connect
            end
    end
    cd $dir
end
