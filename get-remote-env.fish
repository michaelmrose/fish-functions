# Defined in /home/michael/.config/fish/buffer/get-remote-env.fish @ line 1
function get-remote-env
	eval ssh $argv[1] echo \'\$argv[2]\'
end
