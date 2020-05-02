# Defined in /home/michael/.config/fish/buffer/f_fv.fish @ line 6
function fv
    fd -e mp4 -e avi -e mkv |select|all mpv
end
