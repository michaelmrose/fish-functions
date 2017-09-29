# Defined in /home/michael/.config/fish/buffer/synergyconnected.fish @ line 1
function synergyconnected
	echo (grep connected /tmp/synerglog.txt)[-1] | grep --invert-match disconnected
end
