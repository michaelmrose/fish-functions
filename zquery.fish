# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path_dolphin-open.fish @ line 15
function zquery
	zoxide query -i| dolphin-open-path $argv[1]
end
