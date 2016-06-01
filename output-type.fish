function output-type
	if ponymix -t sink defaults --short | head -1 | grep Headset > /dev/null
      echo headphones
    else
      echo speakers
    end
end
