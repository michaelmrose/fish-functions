# Defined in /home/michael/.config/fish/buffer/toggle-output-type.fish @ line 1
function toggle-output-type
	switch (output-type)
        case headphones
            fishswitchaudio.fish headset
        case speakers
            fishswitchaudio.fish speakers
    end
end
