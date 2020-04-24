# Defined in /home/michael/.config/fish/buffer/flactest_oggtest.fish @ line 6
function oggtest
    ogginfo -q (fd -e flac) >/dev/null
end
