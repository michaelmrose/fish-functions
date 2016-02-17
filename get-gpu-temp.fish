function get-gpu-temp
	ctof (unique (nvidia-settings -q gpucoretemp -t))
end
