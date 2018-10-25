# Defined in /home/michael/.config/fish/buffer/withtheme.fish @ line 1
function withtheme
	env GTK_THEME=$argv[1] $argv[2..-1]
end
