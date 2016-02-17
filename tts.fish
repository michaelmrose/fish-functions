function tts
	if exists $argv
        google_speech -l en "$argv" -e speed 1.5
    else
        while read -l line
            tts $line
        end
    end
end
