function weather-icon
	weather $geo --iconify | rev | cut -c1-3
end
