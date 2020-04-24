# Defined in /home/michael/.config/fish/buffer/flactest_oggtest.fish @ line 2
function flactest
    flac --test --silent (fd -e flac) 2>| cut -d : -f1|g 'flac$'
end
