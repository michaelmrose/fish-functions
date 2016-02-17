function update-env-via-blocking-fn
	while read -l line
        set -U $argv $line
        echo $line
    end
end
