# Defined in /home/michael/.config/fish/buffer/flactest_oggtest.fish @ line 7
function oggtest
    for f in (fd -e ogg)
        if ogginfo -q $f > /dev/null
            echo (fullpath $f)
        end
    end
end
