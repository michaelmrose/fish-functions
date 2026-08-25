function clip
    if exists $argv
        switch $argv[1]
            case  'o'
                xclip  -selection clipboard -o
            case 'ext'
                fd  --strip-cwd-prefix (intersperse -e $argv[2..-1]) -x bat --style=header --decorations=always --color=never |clip
            case '*'
                bat --style=header --decorations=always --color=never $argv |clip
        end
    else
        xclip -selection clipboard -i
    end
end
