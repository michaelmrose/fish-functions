# Defined in /home/michael/.config/fish/buffer/memsize.fish @ line 1
function memsize
	echo (math (ps -C firefox-bin --no-headers -o rss | xargs | sed -e 's/ /+/g' | bc) / 1024)M
end
