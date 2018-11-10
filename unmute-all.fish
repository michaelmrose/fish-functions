# Defined in /home/michael/.config/fish/buffer/mute-all-except-speakers.fish @ line 17
function unmute-all
	for i in (seq (ponymix list -t sink --short|wc -l))
        ponymix unmute
    end
end
