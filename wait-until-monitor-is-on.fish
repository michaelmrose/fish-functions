# Defined in /home/michael/.config/fish/buffer/wait-until-monitor-is-on.fish @ line 1
function wait-until-monitor-is-on
	while true
        if xset -q |g 'monitor is on' > /dev/null
            return 0
        end

    end
end
