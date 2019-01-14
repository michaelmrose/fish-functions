# Defined in /home/michael/.config/fish/buffer/weather-icon.fish @ line 2
function weather-icon
	# weather $geo --iconify | rev | cut -c1-3
/home/michael/extproj/IconicWeather/IconicWeather.sh 'NAM|US|WA|BREMERTON'|nth 1
end
