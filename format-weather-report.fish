# Defined in /home/michael/.config/fish/buffer/bremerton-weather_format-weath.fish @ line 7
function format-weather-report
	p $argv | sd '\(.*\)' '' |n l5-7|cut -d : -f2- | condense_lines |trim|condense_spaces
end
