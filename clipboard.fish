function clipboard
    if exists $argv
        switch $argv
            case  'o'
                xclip  -selection clipboard -o
            case '*'
                if test -f $argv
                    cat $argv | clipboard
                    # eval $argv | clipboard
                end
        end
    else
        xclip -selection clipboard -i
    end
end
