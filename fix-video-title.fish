function fix-video-title
	while read -l line
        echo $line | sed 's*&#39;*\'*g' | sed 's#&quot;##g'
    end
end
