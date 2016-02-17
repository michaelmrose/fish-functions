function freespace
	df $argv -h | grep dev | tr -s ' ' | cut -d " " -f4
end
