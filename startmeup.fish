function startmeup
	if not exists $DISPLAY
        if [ (mytty) = 1 ]
            startx
        end
    end
end
