# Defined in /home/michael/.config/fish/buffer/mute-rest-switch-to.fish @ line 2
function mute-rest-switch-to
	for i in (seq 0 (decrease (ponymix list -t sink --short|wc -l)))
        if string match (output-type) $argv
          ponymix unmute
          set ndx $i
          # echo set n $i
      else
          ponymix mute
          # echo set nothing and i is $i
        end
        #   switch (output-type)
        #     case $argv
        #         ponymix unmute
        #         set ndx $i
        #     case '*'
        #         ponymix mute
        # end
        fishswitchaudio.fish
    end
    fishswitchaudio.fish $argv
    # while not string match (output-type) $argv
    #     fishswitchaudio.fish
    # end
    # echo n is $ndx
    # fishswitchaudio.fish $ndx
end
