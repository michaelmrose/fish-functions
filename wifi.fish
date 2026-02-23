function wifi
    switch $argv[1]
        case once
            nmcli device wifi connect $argv[2] --ask
        case '*'
            while not online?
                nmcli device wifi connect $argv[1] --ask
                sleep 2
            end
        case captive
            wifi once $argv[2]
            firefox rosenetwork.net
    end
end
