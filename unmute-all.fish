# Defined in /home/michael/.config/fish/buffer/mute-all-except-speakers_unmut.fish @ line 6
function unmute-all
	for i in (seq (ponymix list -t sink --short|wc -l))
        ponymix unmute
        fishswitchaudio.fish
  end
end
