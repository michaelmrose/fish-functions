function match
	set com echo $argv[1] \| ag -i \'\^$argv[2]\$\'
  eval $com > /dev/null
end
