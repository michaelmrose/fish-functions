# Defined in /home/michael/.config/fish/buffer/fish_prompt_fish_prompt_send-k.fish @ line 1
function send-key-to-desktop
	ssh desktop xdotool getactivewindow windowactivate --sync key $argv
end
