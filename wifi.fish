function wifi
    switch $argv[1]
        case once
            nmcli device wifi connect $argv[2] --ask
        case select
            networks|select|fishstdin wifi once
        case '*'
            while not online?
                nmcli device wifi connect $argv[1] --ask
                sleep 2
            end
    end
end
