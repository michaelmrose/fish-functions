# Defined in /home/michael/.config/fish/buffer/path-of-binary.fish @ line 1
function path-of-binary
    if test -f $argv
        echo $argv
    else
        if which $argv
        else
            return 1
        end

    end
end
