# Defined in /home/michael/.config/fish/buffer/nth.fish @ line 2
function nth
	set segments (foreach $argv 'echo \$_')
	  while read -l line
        # echo $segments
        # echo $line | awk "{print \$segments}"
        echo segs are $segments
        set com 'echo $line | awk "{print $segments}"'
        p (eval $com)
    end
end
