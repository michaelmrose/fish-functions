function stdincurl
	while read -l line
        curl $line
    end
end
