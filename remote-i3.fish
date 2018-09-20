# Defined in /home/michael/.config/fish/buffer/remote-i3.fish @ line 2
function remote-i3
	ssh $argv[1] "set -x DISPLAY :0;i3-msg $argv[2..-1]"
end
