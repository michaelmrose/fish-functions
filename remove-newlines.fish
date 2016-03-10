function remove-newlines
	if exists argv
    echo $argv | sed ':a;N;$!ba;s/\n/ /g'
  else
    while read -l line
      set acc $acc $line
    end
    echo $line
  end
end
