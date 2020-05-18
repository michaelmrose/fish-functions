# Defined in /home/michael/.config/fish/buffer/msg.fish @ line 6
function ms
	twmnc -d 2000 --id 1 --icon info_icon --title $argv[1] --content "$argv[2..-1]"
end
