# Defined in /home/michael/.config/fish/buffer/fv.fish @ line 2
function fv
    fd -e mp4 -e avi -e mkv |select|all mpv
end
