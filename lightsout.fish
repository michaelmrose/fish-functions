# Defined in /home/michael/.config/fish/buffer/lightsout_wait-until-monitor-i.fish @ line 2
function lightsout
	sleep 0.5
    xset dpms force off
	  while true
        if xset -q |g 'monitor is on' > /dev/null
            return 0
        else
            sleep 1
        end
    end
    xset -dpms
end
