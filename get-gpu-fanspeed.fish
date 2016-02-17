function get-gpu-fanspeed
	set speed (nvidia-settings -q GPUCurrentFanSpeed -t)
    echo {$speed}%
end
