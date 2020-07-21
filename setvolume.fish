# Defined in /home/michael/.config/fish/buffer/setvolume.fish @ line 2
function setvolume
	# ponymix set-volume $argv
    pamixer --set-volume $argv
end
