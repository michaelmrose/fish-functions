# Defined in /home/michael/.config/fish/buffer/lightsout_rboot_sdown_sus_syst.fish @ line 2
function lightsout
	sleep 0.5
    xset dpms force off
	  # while true
    #     if xset -q |g 'monitor is on' > /dev/null
    #         xset -dpms
    #         return 0
    #     else
    #         sleep 1
    #     end
    # end
end
