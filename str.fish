# Defined in /home/michael/.config/fish/buffer/str.fish @ line 2
function str
    switch $argv[1]
        case '\['
            set close '\]'
        case '\('
            set close '\)'
        case '*'
           set close $argv[1]
    end
    while read -l line
        set acc $acc $line
    end
    p $acc | choose -f $argv[1] 0 |choose -f $close 0
end
