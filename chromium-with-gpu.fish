# Defined in /home/michael/.config/fish/buffer/chromium-with-gpu.fish @ line 2
function chromium-with-gpu
	  chromium --enable-gpu-rasterization --ignore-gpu-blacklist --disable-gpu-driver-workarounds --use-gl=desktop $argv
end
