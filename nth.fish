# Defined in /home/michael/.config/fish/buffer/lines_nth.fish @ line 16
function nth
	set numbers (echo $argv | cut -d - -f1- --output-delimiter=" " | all explode-words)
	  while read -l line
        for val in $numbers
            set acc $acc (echo $line | awk "{print \$$val}")
        end
        echo $acc
    end
end
