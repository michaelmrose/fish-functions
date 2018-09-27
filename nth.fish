# Defined in /home/michael/.config/fish/buffer/nth.fish @ line 2
function nth
	# set segments (foreach $argv 'echo \$_')
    # set segments (seq $argv[1] $argv[2])
	  while read -l line
        # echo $segments
        # echo $line | awk "{print \$segments}"
        # set com 'echo $line | awk "{print $segments}"'
        # eval $com
        for val in $argv
            set acc $acc (echo $line | awk "{print \$$val}")
        end
        echo $acc
    end
end
