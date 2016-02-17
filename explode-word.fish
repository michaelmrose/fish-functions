function explode-word
	if test (echo $argv | wc -w) -eq 1 
        for i in (seq (sizeof $argv))
           echo $argv | cut -c$i
        end
    end
end
