# Defined in /home/michael/.config/fish/buffer/truncated-mpd-status-line.fish @ line 2
function truncated-mpd-status-line
    truncate 40 right (mpd-status-line)
end
