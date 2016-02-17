function extract-title-from-recent-list-entry
	if substr $argv @
        switch-library (echo $argv | cut -d "@" -f2 | cut -d '"' -f1)
        echo $argv | cut -d "@" -f1 | trim | append-strings '"' 
    else
        echo $argv
    end
end
