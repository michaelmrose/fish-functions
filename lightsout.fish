function lightsout
	sleep 2
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
