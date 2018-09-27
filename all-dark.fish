# Defined in /home/michael/.config/fish/buffer/all-dark.fish @ line 1
function all-dark
	ssh desktop 'set -x DISPLAY :0;and lightsout'
    lightsout
end
