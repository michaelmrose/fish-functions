# Defined in /home/michael/.config/fish/buffer/fucking-caps-led.fish @ line 2
function fucking-caps-led
	echo $argv | sudo tee /sys/devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3.3/1-3.3.2/1-3.3.2:1.0/0003:24F0:0137.0011/input/input42/input42::capslock/brightness
end
