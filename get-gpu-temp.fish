function get-gpu-temp
	echo (unique (nvidia-settings -q gpucoretemp -t))°C
end
