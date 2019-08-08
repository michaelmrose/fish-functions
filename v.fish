# Defined in /home/michael/.config/fish/buffer/v.fish @ line 2
function v
	find-video $argv | select | all "mpv _ &"
end
