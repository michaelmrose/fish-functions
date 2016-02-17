function return-youtube-url
	if echo $argv | grep 'https://www.youtube.com/watch' > /dev/null
        echo \""$argv"\"
    else
        echo \""https://www.youtube.com/watch?v=$argv"\"
    end
end
