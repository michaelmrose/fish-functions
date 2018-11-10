# Defined in /home/michael/.config/fish/buffer/mute-rest-switch-to_mute-rest-.fish @ line 34
function unmute-all
	for i in (seq (ponymix list -t sink --short|wc -l))
        ponymix unmute
        fishswitchaudio.fish
  end
end
