function replace-str
	set numargs (count $argv)
    if test $numargs -gt 2
            echo $argv[3..-1] | sed "s/$argv[1]/$argv[2]/g"
    else
        while read -l line
            echo $line | sed "s/$argv[1]/$argv[2]/g"
        end
    end
end
