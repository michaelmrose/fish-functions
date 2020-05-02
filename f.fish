# Defined in /home/michael/.config/fish/buffer/f_fv.fish @ line 1
function f
    fd $argv |select|all xdg-open
end
