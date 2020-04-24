# Defined in /home/michael/.config/fish/buffer/flactest_oggtest.fish @ line 7
function oggtest
    for f in $argv
        if ogginfo -q > /dev/null
            echo (fullpath $f)
        end
    end
end
