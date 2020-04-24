# Defined in /home/michael/.config/fish/buffer/flactest_mp3test_oggtest.fish @ line 10
function mp3test
    for f in (fd -e flac)
        if not mp3val -si $f 2>/dev/null
            echo (fullpath $f)
        end
    end
end
