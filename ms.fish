# Defined in /home/michael/.config/fish/buffer/ms.fish @ line 2
function ms
	twmnc -d 4000 --id 1 --icon info_icon --title $argv[1] --content "$argv[2..-1]"
end
