function rat
    set name (ratbagctl list |choose -f ':| ' 0 )
    if isnumeric $argv[1]
        rat profile active set $argv[1]
    else
        ratbagctl $name $argv
    end
end
