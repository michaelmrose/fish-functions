# Defined in /home/michael/.config/fish/buffer/fucking-caps-led.fish @ line 2
function fucking-caps-led
	fnd '.*capslock/brightness$' /sys/devices|each "echo $argv | sudo tee _" 
end
