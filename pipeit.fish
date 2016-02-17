function pipeit
	while read -l line
       set foo $argv $line
       eval $foo
    end
end
