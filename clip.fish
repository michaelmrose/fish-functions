function clip
    if exists $argv
        switch $argv
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
