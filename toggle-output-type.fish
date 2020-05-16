# Defined in /home/michael/.config/fish/buffer/toggle-output-type.fish @ line 2
function toggle-output-type
	switch (output-type)
        case headphones
            switchaudio set built-in
        case speakers
            switchaudio set headset
    end
end
