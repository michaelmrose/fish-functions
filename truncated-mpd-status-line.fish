# Defined in /home/michael/.config/fish/buffer/truncated-mpd-status-line.fish @ line 1
function truncated-mpd-status-line
    truncate 60 right (mpd-status-line)
end
