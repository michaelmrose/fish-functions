# Defined in /home/michael/.config/fish/buffer/newnewfuckingweather.fish @ line 24
function format-weather-report
	p $argv | sd '\(.*\)' '' |n l5-7|cut -d : -f2- | condense_lines |trim|condense_spaces
end
