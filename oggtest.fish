# Defined in /home/michael/.config/fish/buffer/flactest_mp3test_oggtest.fish @ line 20
function oggtest
            for f in (fd -e ogg)
        if not ogginfo -q $f > /dev/null
            echo (fullpath $f)
        end
    end
end
