function notify-when-changed
    set time $argv[1]
    set command $argv[2..-1]
    set newvalue (command)
    set oldvalue $newvalue
    while true
        set newvalue (command)
        if not string match $newvalue $oldvalue
            set oldvalue $newvalue
            msg value is now $newvalue
        else
            echo value is still $newvalue
        end
    end
end
