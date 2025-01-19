function iff
    if eval $argv[1] > /dev/null
        echo $argv[2]
    else
        echo $argv[3]
    end
end
