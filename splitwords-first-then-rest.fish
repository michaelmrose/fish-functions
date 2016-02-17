function splitwords-first-then-rest
	set words (echo $argv | sed 's# #_#')
    echo $words | cut -d "_" -f1
    echo $words | cut -d "_" -f2-
end
