# Defined in /home/michael/.config/fish/buffer/truncated-mpd-status-line.fish @ line 2
function truncated-mpd-status-line
    # truncate 50 right (mpd-status-line) | trim | iconv -f utf-8 -t utf-8
    mpd-status-line4 50
end
