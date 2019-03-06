# Defined in /home/michael/.config/fish/buffer/fucking-caps-led.fish @ line 2
function fucking-caps-led
	fnd '.*capslock/brightness$' /sys/devices|each "echo 0 | sudo tee" 
end
