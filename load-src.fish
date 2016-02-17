function load-src
	set tmp /tmp/(uid).fish
  if exists $argv
    source $argv
  else
    while read -l line
      echo $line >> $tmp
    end
    source $tmp
  end
end
