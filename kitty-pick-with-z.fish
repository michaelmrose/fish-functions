# Defined in /home/michael/.config/fish/buffer/kitty-pick-with-z.fish @ line 2
function kitty-pick-with-z
    if status is-interactive
        spacefm -s set current_dir (zoxide query -i|cut -d ' ' -f2)
    else
        kitty -1 ff kitty-pick-with-z
    end
end
