function get-gpu-temp
	unique (nvidia-settings -q gpucoretemp -t)
end
