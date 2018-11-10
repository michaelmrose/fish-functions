# Defined in /home/michael/.config/fish/buffer/mute-rest-switch-to-headphones.fish @ line 2
function mute-rest-switch-to-headphones
	for i in (seq (ponymix list -t sink --short|wc -l))
      switch (output-type)
          case headphones
                ponymix unmute
            case '*'
                ponymix mute
        end
        fishswitchaudio.fish
    end
    while not string match (output-type) headphones
        fishswitchaudio.fish
    end
end
