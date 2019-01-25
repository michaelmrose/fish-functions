# Defined in /home/michael/.config/fish/buffer/lightsout_wait-until-monitor-i.fish @ line 16
function wait-until-monitor-is-on
	while true
        if xset -q |g 'monitor is on' > /dev/null
            return 0
        end

    end
end
