# Defined in /home/michael/.config/fish/buffer/nth.fish @ line 2
function nth
	while read -l line
        set segments (foreach $line 'echo \$_')
        echo $segments
        echo $line | awk "{print \$$argv}"
  end
end
