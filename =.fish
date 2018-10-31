# Defined in /home/michael/.config/fish/buffer/=.fish @ line 1
function =
	string match -r $argv[1] $argv[2] > /dev/null
end
