# Defined in /home/michael/.config/fish/buffer/create-swap.fish @ line 2
function create-swap
	sudo zfs create -V 4G -b (getconf PAGESIZE) -o compression=zle \
    -o logbias=throughput -o sync=always \
    -o primarycache=metadata -o secondarycache=none \
    -o com.sun:auto-snapshot=false tank/swap
  sudo mkswap -f /dev/zvol/tank/swap
end
