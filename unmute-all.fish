# Defined in /home/michael/.config/fish/buffer/mute-rest-switch-to-headphones.fish @ line 18
function unmute-all
	for i in (seq (ponymix list -t sink --short|wc -l))
        ponymix unmute
        fishswitchaudio.fish
  end
end
