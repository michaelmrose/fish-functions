# Defined in /home/michael/.config/fish/buffer/path-of-binary.fish @ line 2
function path-of-binary
    if test -f $argv
        echo $argv
    else
        if which $argv 2> /dev/null
        else
            return 1
        end

    end
end
