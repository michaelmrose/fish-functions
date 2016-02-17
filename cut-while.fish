function cut-while
	while read -l line
        echo $line | cut -d " " -f11 | cut -d ')' -f1
    end
end
