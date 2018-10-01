# Defined in /home/michael/.config/fish/buffer/nth.fish @ line 2
function nth
	set numbers (echo $argv | cut -d - -f1- --output-delimiter=" " | all explode-words)
	  while read -l line
        for val in $numbers
            set acc $acc (echo $line | awk "{print \$$val}")
        end
        echo $acc
        set -e acc
    end
end
