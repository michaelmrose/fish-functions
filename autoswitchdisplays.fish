function autoswitchdisplays
	switch (count (get-connected-displays))
        case 1
            switchconfig dual
        case 2
            switchconfig single
    end
end
