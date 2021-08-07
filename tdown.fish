# Defined in /usr/home/michael/.config/fish/buffer/tdown.fish @ line 2
function tdown
		set info (prompt 'title @ duration')
		if not exists $info
				last-timer
				return 0
		end
		set title  (echo $info | cut -d @ -f1| trim)
		set duration (echo $info | cut -d @ -f2 | trim)
		eval kitty -o font_size=100 -e termdown --no-figlet -v en-us -T (quote $title) $duration
		echo $title completed at (date) > /tmp/timers-complete.txt
		mpv --no-video ~/sounds/alarm.m4a
end
