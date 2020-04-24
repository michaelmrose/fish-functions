# Defined in /home/michael/.config/fish/buffer/flactest_mp3test_oggtest.fish @ line 11
function mp3test
    for f in (fd -e mp3)
        if not mp3val -si $f 2>/dev/null
            echo (fullpath $f)
        end
    end
end
