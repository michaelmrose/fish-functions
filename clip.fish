function clip
    if exists $argv[1]
        switch $argv[1]
            case  'o'
                xclip  -selection clipboard -o
            case '*'
                # if test -f $argv
                    cat $argv | clip
                # end
        end
    else
        xclip -selection clipboard -i
    end
end
