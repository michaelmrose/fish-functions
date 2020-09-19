# Defined in /usr/home/michael/.config/fish/buffer/toggle-output-type.fish @ line 2
function toggle-output-type
	switch (output-type)
        case headphones
            switchaudio set pci
        case speakers
            switchaudio set usb
    end
end
