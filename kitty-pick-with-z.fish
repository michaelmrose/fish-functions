# Defined in /usr/home/michael/.config/fish/buffer/kitty-pick-with-z.fish @ line 2
function kitty-pick-with-z
if in-terminal
		set dir (zoxide query -i)
		spacefm -s set current_dir "$dir"
else
kitty -1 ff kitty-pick-with-z
end
end
