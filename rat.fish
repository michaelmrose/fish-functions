function rat
    set name (ratbagctl list |choose -f ':| ' 0 )
    ratbagctl $name $argv
end
