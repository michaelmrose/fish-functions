# Defined in /home/michael/.config/fish/buffer/toggle-output-type.fish @ line 2
function toggle-output-type
	output-type
	  switch (output-type)
        case headphones
            fishswitchaudio.fish headset
        case speakers
            fishswitchaudio.fish dock
  end
end
