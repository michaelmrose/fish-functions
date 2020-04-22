# Defined in /tmp/022225d4-9a34-4808-b41a-c4aae39f0f4e.fish @ line 2
function kitty-pick-with-z
if in-terminal
spacefm -s set current_dir (zoxide query -i|cut -d ' ' -f2)
else
kitty -1 ff kitty-pick-with-z
end
end
