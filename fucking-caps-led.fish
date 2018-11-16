# Defined in /home/michael/.config/fish/buffer/fucking-caps-led.fish @ line 2
function fucking-caps-led
	find /sys/devices -type f |g capslock/brightness | each "echo 0 | sudo tee"
end
