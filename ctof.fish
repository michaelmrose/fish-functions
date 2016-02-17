function ctof
	set temp $argv[1]
    set temp (math "$temp * 1.8 + 32")
    # echo $argv º celcius is $temp º fahrenheit
    echo {$temp} ºF
end
