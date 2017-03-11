function datasets
	zp list -H | awk '{print $1}'
end
