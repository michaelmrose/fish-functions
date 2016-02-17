function mrroboto
	if exists $argv
        google_speech -l en "$argv" -e speed 0.9 overdrive 10 echo 0.8 0.7 6 0.7 echo 0.8 0.7 10 0.7 echo 0.8 0.7 12 0.7 echo 0.8 0.88 12 0.7 echo 0.8 0.88 30 0.7 echo 0.6 0.6 60 0.7
    else
        while read -l line
            mrroboto $line
        end
    end
end
