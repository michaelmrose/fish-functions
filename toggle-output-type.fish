# Defined in /home/michael/.config/fish/buffer/toggle-output-type.fish @ line 2
function toggle-output-type
	switch (output-type)
        case headphones
            fishswitchaudio.fish dock
        case speakers
            fishswitchaudio.fish headset
    end
end
