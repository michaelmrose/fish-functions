# Defined in /home/michael/.config/fish/buffer/str.fish @ line 2
function str
    switch $argv[1]
        case '\['
            set close ']'
        case '\('
            set close ')'
        case '*'
           set close $argv[1]
    end
    while read -l line
        set acc $acc $line
    end
    echo p $acc \| cut -d $argv[1] -f 1 \|cut -d $close -f 1
end
