function escapeme
	set val \'$argv\'
    echo \'$val\' | sed 's/*/\*/g' | sed 's/?/\?/g'
end
