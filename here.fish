# Defined in /home/michael/.config/fish/buffer/here.fish @ line 2
function here
	/usr/sbin/ls -A | grep -i $argv
end
