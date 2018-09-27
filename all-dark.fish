# Defined in /home/michael/.config/fish/buffer/all-dark.fish @ line 2
function all-dark
	ssh (get-destination) 'set -x DISPLAY :0;and lightsout'
    lightsout
end
