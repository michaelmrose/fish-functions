# Defined in /home/michael/.config/fish/buffer/mute-all_mute-rest_unmute-all.fish @ line 22
function unmute-all
	for i in (seq (ponymix list -t sink --short|wc -l))
        ponymix unmute
        fishswitchaudio.fish
  end
end
