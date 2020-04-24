# Defined in /home/michael/.config/fish/buffer/flactest_oggtest.fish @ line 2
function flactest
    for f in (fd -e flac)
        if not flac --test $f >/dev/null
            echo (fullpath $f)
        end
    end
end
