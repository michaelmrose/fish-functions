# Defined in /home/michael/.config/fish/buffer/list-outputs.fish @ line 2
function list-outputs
	ponymix -t sink --short|cut -d \t -f4
end
