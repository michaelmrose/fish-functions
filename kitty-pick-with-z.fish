# Defined in /home/michael/.config/fish/buffer/kitty-pick-with-z.fish @ line 2
function kitty-pick-with-z
    set -U KITTY_PICK (zoxide query -i|cut -d ' ' -f2)
end
