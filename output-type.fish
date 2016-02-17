function output-type
	set output (current-output)
    if substr $output Headset
        echo headphones
    else
        echo speakers
    end
end
