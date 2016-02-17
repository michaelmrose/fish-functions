function output-status-line
	switch (output-type)
        case headphones
            set symbol 
        case speakers
            set symbol 
        case "*"
            set symbol 
    end
    echo $symbol (getvolume)
end
