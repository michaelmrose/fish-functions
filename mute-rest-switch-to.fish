# Defined in /home/michael/.config/fish/buffer/mute-rest-switch-to.fish @ line 2
function mute-rest-switch-to
	for i in (seq (ponymix list -t sink --short|wc -l))
        switch (output-type)
            case $argv
                ponymix unmute
                set ndx $i
            case '*'
                ponymix mute
        end
        fishswitchaudio.fish
    end
    # while not string match (output-type) $argv
    #     fishswitchaudio.fish
    # end
    fishswitchaudio.fish $ndx
end
