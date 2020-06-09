# Defined in /home/michael/.config/fish/buffer/choose-better.fish @ line 1
function choose-better
    if isnumeric $argv[1]
        set delim "-f $argv[1]"
        set targets $argv[2..-1]
    else
        set delim "-f ' '" 
        set targets $argv
    end
    set targets (incriment-numbers-in-text $targegs) 
    while read -l line
        set acc $line
    end
    choose $delim $targets
end
